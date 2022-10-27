import 'dart:convert';
import 'dart:developer';
import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../constants/strings.dart';
import '../resources/response_state.dart';

abstract class LocalDataBase {
  Future<ResponseState<List<UserEntity>>> getAllUsers();
  Future<ResponseState> saveUser(UserEntity user);
  Future<ResponseState<UserEntity?>> getUserByUsername(String username);
  Future<ResponseState<T>> checkIfUserExists<T>(UserEntity user,
      {required Future<ResponseState<T>> Function(UserEntity foundUser) exists,
      required Future<ResponseState<T>> Function() doesNotExist});

  Future<ResponseState<List<UserEntity>>> updateUser(UserEntity user);
}

class LocalDataBaseImpl implements LocalDataBase {
  @override
  //get all users from local database
  Future<ResponseState<List<UserEntity>>> getAllUsers() async {
    try {
      final Box box = await openHiveBox(MyStrings.userBoxName);
      List<String> data = (await box.get(MyStrings.userBoxName)) ?? [];
      //get data
      List<UserEntity> users =
          data.map((e) => UserEntity.fromJson(jsonDecode(e))).toList();
      // map data from json to list of user entity
      return ResponseState.success(users);
    } catch (e) {
      log(e.toString());
      // on error return failed state
      return ResponseState.failed('Failed to get data.');
    }
  }

  @override
  // add the new user to users list and save it
  Future<ResponseState> saveUser(UserEntity user) async {
    try {
      final Box box = await openHiveBox(MyStrings.userBoxName);
      //get data
      final ResponseState<List<UserEntity>> response = await getAllUsers();
      List<UserEntity> users = (response as SuccessResponse).data;
      //add new user
      users.add(user);
      //save data
      box.put(
          MyStrings.userBoxName,
          //convert data to json for saving
          users.map((e) => jsonEncode(e.toJson())).toList());

      return ResponseState.success(true);
    } catch (e) {
      log(e.toString());
      // on error return failed state
      return ResponseState.failed('Failed to save data.');
    }
  }

  // open the hive box if it's closed
  Future<Box> openHiveBox(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    return await Hive.openBox(boxName);
  }

  @override
  // get a user by username, returns null if the user doesn't exist.
  Future<ResponseState<UserEntity?>> getUserByUsername(String username) async {
    final response = await getAllUsers();
    if (response is SuccessResponse) {
      final List<UserEntity> users = (response as SuccessResponse).data;
      if (users.any((element) => element.username == username)) {
        // the user exits
        final theUser =
            users.firstWhere((element) => element.username == username);
        return ResponseState.success(theUser);
      } else {
        //the user doesn't exist
        return ResponseState.success(null);
      }
    }
    return ResponseState.failed((response as FailedResponse).error);
  }

  @override
  Future<ResponseState<T>> checkIfUserExists<T>(UserEntity user,
      {required Future<ResponseState<T>> Function(UserEntity foundUser) exists,
      required Future<ResponseState<T>> Function() doesNotExist}) async {
    // check if the user exists
    final response = await getUserByUsername(user.username);
    if (response is SuccessResponse) {
      UserEntity? foundUser = (response as SuccessResponse).data;
      if (foundUser == null) {
        // user doesn't exist
        return doesNotExist();
      } else {
        // user exists
        return exists(foundUser);
      }
    } else {
      // couldn't get data from local database
      return ResponseState.failed((response as FailedResponse).error);
    }
  }

  @override
  Future<ResponseState<List<UserEntity>>> updateUser(UserEntity user) {
    return checkIfUserExists(
      user,
      exists: (foundUser) async {
        int? index = (await getAllUsers())
            .whenOrNull(success: (users) => users.indexOf(foundUser));
        final response = await getAllUsers();
        if (response is SuccessResponse) {
          List<UserEntity> users = (response as SuccessResponse).data;
          // remove user from list
          users.removeWhere((element) => element.username == user.username);
          // add updated user to list
          users.insert(index ?? 0, user);
          // save updated users list
          final Box box = await openHiveBox(MyStrings.userBoxName);
          box.put(
              MyStrings.userBoxName,
              //convert data to json for saving
              users.map((e) => jsonEncode(e.toJson())).toList());
          return Future.value(ResponseState.success(users));
        } else {
          return Future.value(
              ResponseState.failed("Could't get data from database."));
        }
      },
      doesNotExist: () {
        return Future.value(ResponseState.failed("User doesn't exist."));
      },
    );
  }
}

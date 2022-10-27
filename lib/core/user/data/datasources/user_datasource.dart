import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/utils/database/local_database.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

class UserDataSource {
  final LocalDataBase localDataBase;

  UserDataSource(this.localDataBase);

  Future<ResponseState<UserEntity>> loginUser(UserEntity user) async {
    return localDataBase.checkIfUserExists<UserEntity>(user, exists: (foundUser) {
      if (user.username == foundUser.username &&
          user.password == foundUser.password) {
        // correct credentials
        return Future.value(ResponseState.success(foundUser));
      } else {
        //wrong credentials
        return Future.value(ResponseState.failed('Wrong Password.'));
      }
    }, doesNotExist: () {
      return Future.value(ResponseState.failed("User doesn't exist."));
    });
  }

  Future<ResponseState<UserEntity>> registerUser(UserEntity user) async {
    return localDataBase.checkIfUserExists(user, exists: (u) {
      return Future.value(ResponseState.failed('Username already exists.'));
    }, doesNotExist: () async {
      try {
        await localDataBase.saveUser(user);
        return ResponseState.success(user);
      } catch (e) {
        return ResponseState.failed("Couldn't register user.");
      }
    });
  }

  Future<ResponseState<List<UserEntity>>> getAllUsers() async {
    // get all users from local database
    final response = await localDataBase.getAllUsers();
    if (response is SuccessResponse) {
      final data = ((response as SuccessResponse).data as List<UserEntity>)
          // replace the password field for security reasons
          .map((e) => e.copyWith(password: '*'))
          .toList();
      return ResponseState.success(data);
    }
    return response;
  }
  
  Future<ResponseState<List<UserEntity>>> getOtherUsers(UserEntity me) async {
    // get all users from local database
    final response = await getAllUsers();
    if (response is SuccessResponse) {
      // remove the user itself
      ((response as SuccessResponse).data as List<UserEntity>)
          .removeWhere((element) => me == element);
      // returning every other users
      return ResponseState.success((response as SuccessResponse).data);
    }
    return response;
  }

  
}

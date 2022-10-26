import 'package:captain_assignment/utils/resources/response_state.dart';

import '../entities/user_entity.dart';


abstract class UserRepository {
  Future<ResponseState<UserEntity>> registerUser(UserEntity user);
  Future<ResponseState<UserEntity>> loginUser(UserEntity user);
  Future<ResponseState<List<UserEntity>>> getAllUsers();
  Future<ResponseState<List<UserEntity>>> getOtherUsers(UserEntity user);
}

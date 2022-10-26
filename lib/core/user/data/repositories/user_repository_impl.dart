import 'package:captain_assignment/core/user/data/datasources/user_datasource.dart';
import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);
  @override
  Future<ResponseState<UserEntity>> loginUser(UserEntity user) {
    return dataSource.loginUser(user);
  }

  @override
  Future<ResponseState<UserEntity>> registerUser(UserEntity user) {
    return dataSource.registerUser(user);
  }

  @override
  Future<ResponseState<List<UserEntity>>> getAllUsers() {
    return dataSource.getAllUsers();
  }

  @override
  Future<ResponseState<List<UserEntity>>> getOtherUsers(UserEntity me) {
    return dataSource.getOtherUsers(me);
  }
}

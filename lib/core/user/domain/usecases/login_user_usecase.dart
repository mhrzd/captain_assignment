import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';

import '../../../../utils/resources/response_state.dart';
import '../../../../utils/usecase/usecase.dart';

class LoginUserUseCase extends UseCase<ResponseState<UserEntity>, UserEntity> {
  final UserRepository repository;

  LoginUserUseCase(this.repository);
  @override
  Future<ResponseState<UserEntity>> call(UserEntity params) {
    return repository.loginUser(params);
  }
}

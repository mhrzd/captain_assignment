import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';

import '../../../../utils/resources/response_state.dart';
import '../../../../utils/usecase/usecase.dart';

class RegisterNewUserUseCase extends UseCase<ResponseState, UserEntity> {
  final UserRepository repository;

  RegisterNewUserUseCase(this.repository);
  @override
  Future<ResponseState> call(UserEntity params) {
    return repository.registerUser(params);
  }
}

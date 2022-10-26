import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';
import 'package:captain_assignment/utils/usecase/usecase.dart';

class GetAllUsersUseCase
    extends UseCase<ResponseState<List<UserEntity>>, void> {
  final UserRepository repository;

  GetAllUsersUseCase(this.repository);
  @override
  Future<ResponseState<List<UserEntity>>> call(void params) {
    return repository.getAllUsers();
  }
}

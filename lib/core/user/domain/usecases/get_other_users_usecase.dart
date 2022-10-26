import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';
import 'package:captain_assignment/utils/usecase/usecase.dart';

class GetOtherUsersUseCase
    extends UseCase<ResponseState<List<UserEntity>>, UserEntity> {
  final UserRepository repository;

  GetOtherUsersUseCase(this.repository);
  @override
  Future<ResponseState<List<UserEntity>>> call(UserEntity params) {
    return repository.getOtherUsers(params);
  }
}


import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';
import 'package:captain_assignment/utils/usecase/usecase.dart';

import '../entities/badge_assignment_params.dart';
import '../repositories/assign_badge_repository.dart';

class AssignBadgeUseCase extends UseCase<ResponseState<List<UserEntity>>, BadgeAssignmentPrams> {
  final AssignBadgeRepository repository;

  AssignBadgeUseCase(this.repository);
  @override
  Future<ResponseState<List<UserEntity>>> call(BadgeAssignmentPrams params) {
    return repository.assignBadge(params);
  }
}

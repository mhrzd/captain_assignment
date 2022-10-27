import 'package:captain_assignment/utils/resources/response_state.dart';


import '../../../user/domain/entities/user_entity.dart';
import '../../domain/entities/badge_assignment_params.dart';
import '../../domain/repositories/assign_badge_repository.dart';
import '../datasources/assign_badge_datasource.dart';

class AssignBadgeRepositoryImpl implements AssignBadgeRepository {
  final AssignBadgeDataSource dataSource;

  AssignBadgeRepositoryImpl(this.dataSource);
  @override
  Future<ResponseState<List<UserEntity>>> assignBadge(BadgeAssignmentPrams badgeAssignmentPrams) {
    return dataSource.assignBadge(badgeAssignmentPrams);
  }
}

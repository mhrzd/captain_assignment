import 'package:captain_assignment/utils/resources/response_state.dart';


import '../../domain/entities/badge_assignment_params.dart';
import '../../domain/repositories/assign_badge_repository.dart';
import '../datasources/assign_badge_datasource.dart';

class AssignBadgeRepositoryImpl implements AssignBadgeRepository {
  final AssignBadgeDataSource dataSource;

  AssignBadgeRepositoryImpl(this.dataSource);
  @override
  Future<ResponseState> assignBadge(BadgeAssignmentPrams badgeAssignmentPrams) {
    return dataSource.assignBadge(badgeAssignmentPrams);
  }
}

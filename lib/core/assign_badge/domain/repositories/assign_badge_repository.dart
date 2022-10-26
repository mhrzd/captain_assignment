import 'package:captain_assignment/utils/resources/response_state.dart';

import '../entities/badge_assignment_params.dart';

abstract class AssignBadgeRepository {
  Future<ResponseState> assignBadge(BadgeAssignmentPrams badgeAssignmentPrams);
}

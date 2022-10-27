import 'package:captain_assignment/utils/resources/response_state.dart';

import '../../../user/domain/entities/user_entity.dart';
import '../entities/badge_assignment_params.dart';

abstract class AssignBadgeRepository {
  Future<ResponseState<List<UserEntity>>> assignBadge(BadgeAssignmentPrams badgeAssignmentPrams);
}

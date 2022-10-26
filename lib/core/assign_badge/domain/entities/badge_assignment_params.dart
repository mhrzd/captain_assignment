import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';

import 'assign_badge_entity.dart';

class BadgeAssignmentPrams {
  final UserEntity user;
  final AssignBadgeEntity assigningBadge;

  BadgeAssignmentPrams({required this.user, required this.assigningBadge});
}

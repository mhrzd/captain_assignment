import 'dart:async';

import 'package:captain_assignment/core/assign_badge/domain/entities/assign_badge_entity.dart';
import 'package:captain_assignment/utils/database/local_database.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

import '../../../user/domain/entities/user_entity.dart';
import '../../domain/entities/badge_assignment_params.dart';

class AssignBadgeDataSource {
  final LocalDataBase localDataBase;

  AssignBadgeDataSource(this.localDataBase);
  Future<ResponseState<List<UserEntity>>> assignBadge(
      BadgeAssignmentPrams badgeAssignmentPrams) {
    return localDataBase.checkIfUserExists(
      badgeAssignmentPrams.user,
      exists: (foundUser) async {
        List<AssignBadgeEntity> updatedBadges = [];
        // add all badges to updated badges except
        // the badge that logged in user assigned to this user (if exists).
        updatedBadges.addAll(foundUser.badges.where((element) =>
            element.assignedFromUsername !=
            badgeAssignmentPrams.assigningBadge.assignedFromUsername));
        // add new badge to updated badges
        updatedBadges.add(badgeAssignmentPrams.assigningBadge);
        // create updated user with same data but with new updated badges
        UserEntity updatedUser = foundUser.copyWith(badges: updatedBadges);
        // update user in database
        return (await localDataBase.updateUser(updatedUser)).when(
          success: (data) {
            // return other users to update the list
            return ResponseState.success((data as List<UserEntity>)
                .where((element) =>
                    element.username !=
                    badgeAssignmentPrams.assigningBadge.assignedFromUsername)
                .toList());
          },
          failed: (error) {
            return ResponseState.failed(error);
          },
        );
      },
      doesNotExist: () {
        return Future.value(ResponseState.failed('User not found!'));
      },
    );
  }
}

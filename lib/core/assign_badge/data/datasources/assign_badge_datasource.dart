import 'package:captain_assignment/utils/database/local_database.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

import '../../domain/entities/badge_assignment_params.dart';

class AssignBadgeDataSource {
  final LocalDataBase localDataBase;

  AssignBadgeDataSource(this.localDataBase);
  Future<ResponseState> assignBadge(BadgeAssignmentPrams badgeAssignmentPrams) {
    return localDataBase.checkIfUserExists(
      badgeAssignmentPrams.user,
      exists: (foundUser) {
        // remove the badge (if exists) that logged in user assigned to this user.
        foundUser.badges.removeWhere((element) =>
            element.assignedFromUsername ==
            badgeAssignmentPrams.assigningBadge.assignedFromUsername);
        // assign new badge to user
        foundUser.badges.add(badgeAssignmentPrams.assigningBadge);
        // update user in database
        return localDataBase.updateUser(foundUser);
      },
      doesNotExist: () {
        return Future.value(ResponseState.failed('User not found!'));
      },
    );
  }
}

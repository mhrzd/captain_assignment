import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/utils/constants/constants.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

class BadgeDataSource {
  Future<ResponseState<List<BadgeEntity>>> getAllBadges() {
    try {
      return Future.value(ResponseState.success(
          Constants.allBadges.map((e) => BadgeEntity.fromJson(e)).toList()));
    } catch (e) {
      return Future.value(
          ResponseState<List<BadgeEntity>>.failed('Error Mapping Badges!'));
    }
  }
}

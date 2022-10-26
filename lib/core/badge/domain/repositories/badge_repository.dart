import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

abstract class BadgeRepository{
  Future<ResponseState<List<BadgeEntity>>> getAllBadges();
}
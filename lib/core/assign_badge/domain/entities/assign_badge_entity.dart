import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'assign_badge_entity.freezed.dart';
part 'assign_badge_entity.g.dart';

@freezed
abstract class AssignBadgeEntity with _$AssignBadgeEntity{
  factory AssignBadgeEntity({
    required String assignedFromUsername,
    required BadgeEntity badge,
  })=_AssignBadgeEntity;

  factory AssignBadgeEntity.fromJson(Map<String, dynamic> json) =>
      _$AssignBadgeEntityFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
part 'badge_entity.freezed.dart';
part 'badge_entity.g.dart';

@freezed
abstract class BadgeEntity with _$BadgeEntity {
  factory BadgeEntity({
    required int id,
    required String name,
  }) = _BadgeEntity;

  factory BadgeEntity.fromJson(Map<String, dynamic> json) =>
      _$BadgeEntityFromJson(json);
}

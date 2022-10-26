import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../assign_badge/domain/entities/assign_badge_entity.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  factory UserEntity({
    required String username,
    required String password,
    @Default(false) bool isAdmin,
    @Default([]) List<AssignBadgeEntity> badges,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

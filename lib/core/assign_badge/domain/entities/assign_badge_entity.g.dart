// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_badge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignBadgeEntity _$$_AssignBadgeEntityFromJson(Map<String, dynamic> json) =>
    _$_AssignBadgeEntity(
      assignedFromUsername: json['assignedFromUsername'] as String,
      badge: BadgeEntity.fromJson(json['badge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AssignBadgeEntityToJson(
        _$_AssignBadgeEntity instance) =>
    <String, dynamic>{
      'assignedFromUsername': instance.assignedFromUsername,
      'badge': instance.badge,
    };

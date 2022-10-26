// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      username: json['username'] as String,
      password: json['password'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      badges: (json['badges'] as List<dynamic>?)
              ?.map(
                  (e) => AssignBadgeEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'isAdmin': instance.isAdmin,
      'badges': instance.badges,
    };

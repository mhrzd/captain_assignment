// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assign_badge_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignBadgeEntity _$AssignBadgeEntityFromJson(Map<String, dynamic> json) {
  return _AssignBadgeEntity.fromJson(json);
}

/// @nodoc
mixin _$AssignBadgeEntity {
  String get assignedFromUsername => throw _privateConstructorUsedError;
  BadgeEntity get badge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignBadgeEntityCopyWith<AssignBadgeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignBadgeEntityCopyWith<$Res> {
  factory $AssignBadgeEntityCopyWith(
          AssignBadgeEntity value, $Res Function(AssignBadgeEntity) then) =
      _$AssignBadgeEntityCopyWithImpl<$Res, AssignBadgeEntity>;
  @useResult
  $Res call({String assignedFromUsername, BadgeEntity badge});

  $BadgeEntityCopyWith<$Res> get badge;
}

/// @nodoc
class _$AssignBadgeEntityCopyWithImpl<$Res, $Val extends AssignBadgeEntity>
    implements $AssignBadgeEntityCopyWith<$Res> {
  _$AssignBadgeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedFromUsername = null,
    Object? badge = null,
  }) {
    return _then(_value.copyWith(
      assignedFromUsername: null == assignedFromUsername
          ? _value.assignedFromUsername
          : assignedFromUsername // ignore: cast_nullable_to_non_nullable
              as String,
      badge: null == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BadgeEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BadgeEntityCopyWith<$Res> get badge {
    return $BadgeEntityCopyWith<$Res>(_value.badge, (value) {
      return _then(_value.copyWith(badge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AssignBadgeEntityCopyWith<$Res>
    implements $AssignBadgeEntityCopyWith<$Res> {
  factory _$$_AssignBadgeEntityCopyWith(_$_AssignBadgeEntity value,
          $Res Function(_$_AssignBadgeEntity) then) =
      __$$_AssignBadgeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String assignedFromUsername, BadgeEntity badge});

  @override
  $BadgeEntityCopyWith<$Res> get badge;
}

/// @nodoc
class __$$_AssignBadgeEntityCopyWithImpl<$Res>
    extends _$AssignBadgeEntityCopyWithImpl<$Res, _$_AssignBadgeEntity>
    implements _$$_AssignBadgeEntityCopyWith<$Res> {
  __$$_AssignBadgeEntityCopyWithImpl(
      _$_AssignBadgeEntity _value, $Res Function(_$_AssignBadgeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedFromUsername = null,
    Object? badge = null,
  }) {
    return _then(_$_AssignBadgeEntity(
      assignedFromUsername: null == assignedFromUsername
          ? _value.assignedFromUsername
          : assignedFromUsername // ignore: cast_nullable_to_non_nullable
              as String,
      badge: null == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BadgeEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignBadgeEntity implements _AssignBadgeEntity {
  _$_AssignBadgeEntity(
      {required this.assignedFromUsername, required this.badge});

  factory _$_AssignBadgeEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AssignBadgeEntityFromJson(json);

  @override
  final String assignedFromUsername;
  @override
  final BadgeEntity badge;

  @override
  String toString() {
    return 'AssignBadgeEntity(assignedFromUsername: $assignedFromUsername, badge: $badge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignBadgeEntity &&
            (identical(other.assignedFromUsername, assignedFromUsername) ||
                other.assignedFromUsername == assignedFromUsername) &&
            (identical(other.badge, badge) || other.badge == badge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, assignedFromUsername, badge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignBadgeEntityCopyWith<_$_AssignBadgeEntity> get copyWith =>
      __$$_AssignBadgeEntityCopyWithImpl<_$_AssignBadgeEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignBadgeEntityToJson(
      this,
    );
  }
}

abstract class _AssignBadgeEntity implements AssignBadgeEntity {
  factory _AssignBadgeEntity(
      {required final String assignedFromUsername,
      required final BadgeEntity badge}) = _$_AssignBadgeEntity;

  factory _AssignBadgeEntity.fromJson(Map<String, dynamic> json) =
      _$_AssignBadgeEntity.fromJson;

  @override
  String get assignedFromUsername;
  @override
  BadgeEntity get badge;
  @override
  @JsonKey(ignore: true)
  _$$_AssignBadgeEntityCopyWith<_$_AssignBadgeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

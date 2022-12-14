// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity me) started,
    required TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)
        assignBadge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity me)? started,
    TResult? Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity me)? started,
    TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Assign value) assignBadge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Assign value)? assignBadge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Assign value)? assignBadge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity me});

  $UserEntityCopyWith<$Res> get me;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? me = null,
  }) {
    return _then(_$_Started(
      null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get me {
    return $UserEntityCopyWith<$Res>(_value.me, (value) {
      return _then(_value.copyWith(me: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.me);

  @override
  final UserEntity me;

  @override
  String toString() {
    return 'UserEvent.started(me: $me)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.me, me) || other.me == me));
  }

  @override
  int get hashCode => Object.hash(runtimeType, me);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity me) started,
    required TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)
        assignBadge,
  }) {
    return started(me);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity me)? started,
    TResult? Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
  }) {
    return started?.call(me);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity me)? started,
    TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(me);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Assign value) assignBadge,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Assign value)? assignBadge,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Assign value)? assignBadge,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started(final UserEntity me) = _$_Started;

  UserEntity get me;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AssignCopyWith<$Res> {
  factory _$$_AssignCopyWith(_$_Assign value, $Res Function(_$_Assign) then) =
      __$$_AssignCopyWithImpl<$Res>;
  @useResult
  $Res call({BadgeAssignmentPrams badgeAssignmentPrams});
}

/// @nodoc
class __$$_AssignCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_Assign>
    implements _$$_AssignCopyWith<$Res> {
  __$$_AssignCopyWithImpl(_$_Assign _value, $Res Function(_$_Assign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeAssignmentPrams = null,
  }) {
    return _then(_$_Assign(
      null == badgeAssignmentPrams
          ? _value.badgeAssignmentPrams
          : badgeAssignmentPrams // ignore: cast_nullable_to_non_nullable
              as BadgeAssignmentPrams,
    ));
  }
}

/// @nodoc

class _$_Assign implements _Assign {
  const _$_Assign(this.badgeAssignmentPrams);

  @override
  final BadgeAssignmentPrams badgeAssignmentPrams;

  @override
  String toString() {
    return 'UserEvent.assignBadge(badgeAssignmentPrams: $badgeAssignmentPrams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assign &&
            (identical(other.badgeAssignmentPrams, badgeAssignmentPrams) ||
                other.badgeAssignmentPrams == badgeAssignmentPrams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, badgeAssignmentPrams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignCopyWith<_$_Assign> get copyWith =>
      __$$_AssignCopyWithImpl<_$_Assign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity me) started,
    required TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)
        assignBadge,
  }) {
    return assignBadge(badgeAssignmentPrams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity me)? started,
    TResult? Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
  }) {
    return assignBadge?.call(badgeAssignmentPrams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity me)? started,
    TResult Function(BadgeAssignmentPrams badgeAssignmentPrams)? assignBadge,
    required TResult orElse(),
  }) {
    if (assignBadge != null) {
      return assignBadge(badgeAssignmentPrams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Assign value) assignBadge,
  }) {
    return assignBadge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Assign value)? assignBadge,
  }) {
    return assignBadge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Assign value)? assignBadge,
    required TResult orElse(),
  }) {
    if (assignBadge != null) {
      return assignBadge(this);
    }
    return orElse();
  }
}

abstract class _Assign implements UserEvent {
  const factory _Assign(final BadgeAssignmentPrams badgeAssignmentPrams) =
      _$_Assign;

  BadgeAssignmentPrams get badgeAssignmentPrams;
  @JsonKey(ignore: true)
  _$$_AssignCopyWith<_$_Assign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> users, List<BadgeEntity> badges});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? badges = null,
  }) {
    return _then(_$_Loaded(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<BadgeEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<UserEntity> users, final List<BadgeEntity> badges)
      : _users = users,
        _badges = badges;

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<BadgeEntity> _badges;
  @override
  List<BadgeEntity> get badges {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'UserState.loaded(users: $users, badges: $badges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_badges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) {
    return loaded(users, badges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) {
    return loaded?.call(users, badges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, badges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserState {
  const factory _Loaded(
      final List<UserEntity> users, final List<BadgeEntity> badges) = _$_Loaded;

  List<UserEntity> get users;
  List<BadgeEntity> get badges;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Failed(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements UserState {
  const factory _Failed(final String error) = _$_Failed;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AssignFailedCopyWith<$Res> {
  factory _$$_AssignFailedCopyWith(
          _$_AssignFailed value, $Res Function(_$_AssignFailed) then) =
      __$$_AssignFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> users, List<BadgeEntity> badges});
}

/// @nodoc
class __$$_AssignFailedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_AssignFailed>
    implements _$$_AssignFailedCopyWith<$Res> {
  __$$_AssignFailedCopyWithImpl(
      _$_AssignFailed _value, $Res Function(_$_AssignFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? badges = null,
  }) {
    return _then(_$_AssignFailed(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<BadgeEntity>,
    ));
  }
}

/// @nodoc

class _$_AssignFailed implements _AssignFailed {
  const _$_AssignFailed(
      final List<UserEntity> users, final List<BadgeEntity> badges)
      : _users = users,
        _badges = badges;

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<BadgeEntity> _badges;
  @override
  List<BadgeEntity> get badges {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'UserState.assignError(users: $users, badges: $badges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignFailed &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_badges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignFailedCopyWith<_$_AssignFailed> get copyWith =>
      __$$_AssignFailedCopyWithImpl<_$_AssignFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        loaded,
    required TResult Function(String error) failed,
    required TResult Function(List<UserEntity> users, List<BadgeEntity> badges)
        assignError,
  }) {
    return assignError(users, badges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult? Function(String error)? failed,
    TResult? Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
  }) {
    return assignError?.call(users, badges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)? loaded,
    TResult Function(String error)? failed,
    TResult Function(List<UserEntity> users, List<BadgeEntity> badges)?
        assignError,
    required TResult orElse(),
  }) {
    if (assignError != null) {
      return assignError(users, badges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
    required TResult Function(_AssignFailed value) assignError,
  }) {
    return assignError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_AssignFailed value)? assignError,
  }) {
    return assignError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    TResult Function(_AssignFailed value)? assignError,
    required TResult orElse(),
  }) {
    if (assignError != null) {
      return assignError(this);
    }
    return orElse();
  }
}

abstract class _AssignFailed implements UserState {
  const factory _AssignFailed(
          final List<UserEntity> users, final List<BadgeEntity> badges) =
      _$_AssignFailed;

  List<UserEntity> get users;
  List<BadgeEntity> get badges;
  @JsonKey(ignore: true)
  _$$_AssignFailedCopyWith<_$_AssignFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

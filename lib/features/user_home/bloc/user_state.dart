part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(List<UserEntity> users,List<BadgeEntity> badges) = _Loaded;
  const factory UserState.failed(String error) = _Failed;
  const factory UserState.assignError(List<UserEntity> users,List<BadgeEntity> badges) = _AssignFailed;
}

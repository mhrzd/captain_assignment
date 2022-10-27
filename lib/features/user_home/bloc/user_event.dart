part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started(UserEntity me) = _Started;
  const factory UserEvent.assignBadge(BadgeAssignmentPrams badgeAssignmentPrams) = _Assign;
}

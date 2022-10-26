part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login(UserEntity userEntity) = LoginEvent;
  const factory AuthenticationEvent.register(UserEntity userEntity) = RegisterEvent;
}
part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.loggedIn(UserEntity userEntity) = _LoggedIn;
  const factory AuthenticationState.failed(String error) = _Failed;
}

part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial() = _Initial;
  const factory AdminState.loading() = _Loading;
  const factory AdminState.loaded(List<UserEntity> users) = _Loaded;
  const factory AdminState.failed(String error) = _Failed;
}

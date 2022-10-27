import 'package:bloc/bloc.dart';
import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/user/domain/usecases/register_new_user_usecase.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';
import 'package:captain_assignment/utils/usecase/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/user/domain/usecases/login_user_usecase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final RegisterNewUserUseCase registerNewUserUseCase;
  final LoginUserUseCase loginUserUseCase;

  UserEntity? _user;

  UserEntity? get myUser => _user;

  AuthBloc(this.registerNewUserUseCase, this.loginUserUseCase)
      : super(const _Initial()) {
    on<LoginEvent>(
        (event, emit) => _eventHandler(emit, event, useCase: loginUserUseCase));
    on<RegisterEvent>((event, emit) =>
        _eventHandler(emit, event, useCase: registerNewUserUseCase));
  }

  Future<void> _eventHandler(
      Emitter<AuthenticationState> emit, AuthenticationEvent event,
      {required UseCase useCase}) async {
    emit(const _Loading());
    final ResponseState<UserEntity> response = await useCase(event.userEntity);
    response.map(
      success: (value) {
        _user = value.data;
        emit(_LoggedIn(value.data));
      },
      failed: (value) {
        emit(_Failed(value.error));
      },
    );
  }
}

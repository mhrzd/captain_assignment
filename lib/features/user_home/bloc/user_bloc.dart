import 'package:bloc/bloc.dart';
import 'package:captain_assignment/core/user/domain/usecases/get_other_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/user/domain/entities/user_entity.dart';
import '../../../utils/resources/response_state.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetOtherUsersUseCase getOtherUsersUseCase;
  UserBloc(this.getOtherUsersUseCase) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Loading());
      final ResponseState<List<UserEntity>> response =
          await getOtherUsersUseCase(event.me);
      response.map(
        success: (value) {
          emit(_Loaded(value.data));
        },
        failed: (value) {
          emit(_Failed(value.error));
        },
      );
    });
  }
}

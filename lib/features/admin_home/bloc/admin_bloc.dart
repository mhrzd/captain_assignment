import 'package:bloc/bloc.dart';
import 'package:captain_assignment/core/user/domain/usecases/get_all_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/user/domain/entities/user_entity.dart';
import '../../../utils/resources/response_state.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final GetAllUsersUseCase getAllUsersUseCase;
  AdminBloc(this.getAllUsersUseCase) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Loading());
      final ResponseState<List<UserEntity>> response =
          await getAllUsersUseCase(null);
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

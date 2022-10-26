import 'package:bloc/bloc.dart';
import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/core/badge/domain/usecases/get_all_badges_usecase.dart';
import 'package:captain_assignment/core/user/domain/usecases/get_other_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/user/domain/entities/user_entity.dart';
import '../../../utils/resources/response_state.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetOtherUsersUseCase getOtherUsersUseCase;
  final GetAllBadgesUseCase getAllBadgesUseCase;
  UserBloc(this.getOtherUsersUseCase, this.getAllBadgesUseCase)
      : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Loading());
      final ResponseState<List<BadgeEntity>> badgeResponse =
          await getAllBadgesUseCase(null);
      final ResponseState<List<UserEntity>> userResponse =
          await getOtherUsersUseCase(event.me);
      userResponse.map(
        success: (user) {
          badgeResponse.map(
            failed: (badge) {
              emit(_Failed(badge.error));
            },
            success: (badge) {
              emit(_Loaded(user.data, badge.data));
            },
          );
        },
        failed: (user) {
          emit(_Failed(user.error));
        },
      );
    });
  }
}

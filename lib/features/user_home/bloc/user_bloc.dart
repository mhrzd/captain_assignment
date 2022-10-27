import 'package:bloc/bloc.dart';
import 'package:captain_assignment/core/assign_badge/domain/entities/badge_assignment_params.dart';
import 'package:captain_assignment/core/assign_badge/domain/usecases/assign_badge_usecase.dart';
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
  final AssignBadgeUseCase assignBadgeUseCase;
  UserBloc(this.getOtherUsersUseCase, this.getAllBadgesUseCase,
      this.assignBadgeUseCase)
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
    on<_Assign>((event, emit) async {
      List<BadgeEntity> badges = (state as _Loaded).badges;
      List<UserEntity> previousStateUsers = (state as _Loaded).users;
      final ResponseState<List<UserEntity>> response =
          await assignBadgeUseCase(event.badgeAssignmentPrams);
      response.when(
        success: (newStateUsers) {
          emit(UserState.loaded(newStateUsers, badges));
        },
        failed: (error) {
          emit( _AssignFailed(previousStateUsers,badges));
        },
      );
    });
  }

  BadgeEntity? myBadge(UserEntity userEntity, UserEntity me) {
    return state.whenOrNull(
      loaded: (users, badges) {
        BadgeEntity? _myBadge;
        try {
          _myBadge = userEntity.badges
              .firstWhere(
                  (element) => element.assignedFromUsername == me.username)
              .badge;
        } catch (e) {}
        return _myBadge;
      },
    );
  }
}

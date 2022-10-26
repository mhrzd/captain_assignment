import 'package:captain_assignment/core/assign_badge/data/datasources/assign_badge_datasource.dart';
import 'package:captain_assignment/core/assign_badge/data/repositories/assign_badge_repository_impl.dart';
import 'package:captain_assignment/core/assign_badge/domain/repositories/assign_badge_repository.dart';
import 'package:captain_assignment/core/assign_badge/domain/usecases/assign_badge_usecase.dart';
import 'package:captain_assignment/core/badge/data/datasources/badge_datasource.dart';
import 'package:captain_assignment/core/badge/data/repositories/badge_repository_impl.dart';
import 'package:captain_assignment/core/badge/domain/repositories/badge_repository.dart';
import 'package:captain_assignment/core/badge/domain/usecases/get_all_badges_usecase.dart';
import 'package:captain_assignment/core/user/data/datasources/user_datasource.dart';
import 'package:captain_assignment/core/user/data/repositories/user_repository_impl.dart';
import 'package:captain_assignment/core/user/domain/repositories/user_repository.dart';
import 'package:captain_assignment/core/user/domain/usecases/get_other_users_usecase.dart';
import 'package:captain_assignment/core/user/domain/usecases/login_user_usecase.dart';
import 'package:captain_assignment/core/user/domain/usecases/register_new_user_usecase.dart';
import 'package:captain_assignment/features/admin_home/bloc/admin_bloc.dart';
import 'package:captain_assignment/features/authentication/bloc/authentication_bloc.dart';
import 'package:captain_assignment/features/user_home/bloc/user_bloc.dart';
import 'package:captain_assignment/utils/database/local_database.dart';
import 'package:get_it/get_it.dart';

import 'core/user/domain/usecases/get_all_users_usecase.dart';

final locator = GetIt.instance;

void setUp() {
  _setUpUser();
  _setUpBadge();
  _setUpAssignBadge();
  _setUpSources();
  _setUpBlocs();
}

void _setUpBlocs() {
  locator.registerLazySingleton(() => AuthenticationBloc(locator(), locator()));
  locator.registerLazySingleton(() => UserBloc(locator(), locator()));
  locator.registerLazySingleton(() => AdminBloc(locator()));
}

void _setUpSources() {
  // local database
  locator.registerLazySingleton<LocalDataBase>(() => LocalDataBaseImpl());
}

void _setUpAssignBadge() {
  //usecase
  locator.registerLazySingleton(() => AssignBadgeUseCase(locator()));
  //repository
  locator.registerLazySingleton<AssignBadgeRepository>(
      () => AssignBadgeRepositoryImpl(locator()));
  // data source
  locator.registerLazySingleton(() => AssignBadgeDataSource(locator()));
}

void _setUpBadge() {
  //usecase
  locator.registerLazySingleton(() => GetAllBadgesUseCase(locator()));
  //repository
  locator.registerLazySingleton<BadgeRepository>(
      () => BadgeRepositoryImpl(locator()));
  // data source
  locator.registerLazySingleton(() => BadgeDataSource());
}

void _setUpUser() {
  //usecase
  locator.registerLazySingleton(() => GetOtherUsersUseCase(locator()));
  locator.registerLazySingleton(() => GetAllUsersUseCase(locator()));
  locator.registerLazySingleton(() => LoginUserUseCase(locator()));
  locator.registerLazySingleton(() => RegisterNewUserUseCase(locator()));
  //repository
  locator.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(locator()));
  //data source
  locator.registerLazySingleton(() => UserDataSource(locator()));
}

import 'package:captain_assignment/features/admin_home/bloc/admin_bloc.dart';
import 'package:captain_assignment/features/admin_home/pages/admin_home_page.dart';
import 'package:captain_assignment/features/authentication/pages/register_page.dart';
import 'package:captain_assignment/features/user_home/bloc/user_bloc.dart';
import 'package:captain_assignment/features/user_home/pages/user_home_page.dart';
import 'package:captain_assignment/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/authentication/bloc/authentication_bloc.dart';
import 'features/authentication/pages/log_in_page.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/login_page',
      routes: {
        '/login_page': (context) => BlocProvider<AuthenticationBloc>(
              create: (context) => locator(),
              child: const LoginPage(),
            ),
        '/register_page': (context) => BlocProvider<AuthenticationBloc>.value(
              value: locator(),
              child: RegisterPage(),
            ),
        '/admin_page': (context) => BlocProvider<AdminBloc>(
              create: (context) => locator(),
              child: const AdminHomePage(),
            ),
        '/user_page': (context) => MultiBlocProvider(providers: [
              BlocProvider<UserBloc>(
                create: (context) => locator(),
              ),
              BlocProvider<AuthenticationBloc>.value(value: locator()),
            ], child: const UserHomePage())
      },
    );
  }
}

import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/features/authentication/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/strings.dart';
import '../../../utils/snack/snack.dart';
import '../bloc/authentication_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameTextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                hintText: MyStrings.usernameHintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordTextController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                hintText: MyStrings.passwordHintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthBloc, AuthenticationState>(
              listener: (context, state) {
                state.whenOrNull(
                  failed: (error) {
                    Snack().showErrorMessage(context, error);
                  },
                  loggedIn: (userEntity) {
                    if (userEntity.isAdmin) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/admin_page', (Route<dynamic> route) => false);
                    } else {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/user_page', (Route<dynamic> route) => false);
                    }
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  orElse: () => CustomButton(
                    onTap: () {
                      if (validate(context)) {
                        context.read<AuthBloc>().add(AuthenticationEvent.login(
                            UserEntity(
                                username: usernameTextController.text,
                                password: passwordTextController.text)));
                      }
                    },
                    title: MyStrings.loginText,
                    textColor: Colors.white,
                    buttonColor: Colors.blueGrey,
                    expand: true,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, '/register_page');
              },
              title: MyStrings.createAccountText,
              textColor: Colors.black,
              expand: true,
            ),
          ],
        ),
      )),
    );
  }

  bool validate(BuildContext context) {
    if (usernameTextController.text.isEmpty ||
        passwordTextController.text.isEmpty) {
      Snack().showErrorMessage(context, MyStrings.emptyFieldsError);
      return false;
    }
    return true;
  }
}

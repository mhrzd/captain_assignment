import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/utils/snack/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants/strings.dart';
import '../bloc/authentication_bloc.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameTextController = TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();

  final TextEditingController passwordReenterTextController =
      TextEditingController();

  bool isAdmin = false;

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
            TextField(
              controller: passwordReenterTextController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                hintText: MyStrings.passwordReenterHintText,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Admin?'),
                Checkbox(
                    value: isAdmin,
                    onChanged: (v) {
                      setState(() {
                        isAdmin = v ?? false;
                      });
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthenticationBloc, AuthenticationState>(
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
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  orElse: () => CustomButton(
                    onTap: () {
                      if (validate()) {
                        context.read<AuthenticationBloc>().add(
                            AuthenticationEvent.register(UserEntity(
                                username: usernameTextController.text,
                                password: passwordTextController.text,
                                isAdmin: isAdmin)));
                      }
                    },
                    title: MyStrings.registerText,
                    textColor: Colors.white,
                    buttonColor: Colors.blueGrey,
                    expand: true,
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }

  bool validate() {
    if (usernameTextController.text.isEmpty ||
        passwordTextController.text.isEmpty ||
        passwordReenterTextController.text.isEmpty) {
      Snack().showErrorMessage(context, MyStrings.emptyFieldsError);
      return false;
    }
    if (passwordReenterTextController.text != passwordTextController.text) {
      Snack().showErrorMessage(context, MyStrings.passwordReenterError);
      return false;
    }
    return true;
  }
}

import 'package:captain_assignment/features/authentication/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/strings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
            CustomButton(
              onTap: () {},
              title: MyStrings.loginText,
              textColor: Colors.white,
              buttonColor: Colors.blueGrey,
              expand: true,
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
}

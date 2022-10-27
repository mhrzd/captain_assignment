import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/utils/constants/strings.dart';
import 'package:captain_assignment/utils/snack/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication/bloc/authentication_bloc.dart';
import '../bloc/user_bloc.dart';
import '../widgets/user_badge_widget.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  createState() => _UserHomePage();
}

class _UserHomePage extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyStrings.userPageTitle),
      ),
      body: SafeArea(
        child: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            state.whenOrNull(
              assignError: (users, badges) {
                Snack().showErrorMessage(context, MyStrings.assigningFailed);
              },
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () {
                // get other users
                context
                    .read<UserBloc>()
                    .add(UserEvent.started(context.read<AuthBloc>().myUser!));
                return const SizedBox();
              },
              // showing circular progress indicator on loading
              loading: () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ]),
              // show error and retry button on fail
              failed: (error) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(error)),
                  InkWell(
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          MyStrings.retryText,
                          style: TextStyle(color: Colors.blueGrey),
                        )),
                    onTap: () =>
                        //retry getting users
                        context.read<UserBloc>().add(UserEvent.started(
                            context.read<AuthBloc>().myUser!)),
                  ),
                ],
              ),
              // showing data
              loaded: (users, badges) => _ListOfUsers(users, badges),
              assignError: (users, badges) => _ListOfUsers(users, badges),
            );
          },
        ),
      ),
    );
  }

  Widget _ListOfUsers(List<UserEntity> users, List<BadgeEntity> badges) {
    return users.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Center(child: Text(MyStrings.emptyListText))])
        : ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return UserBadgeWidget(user: users[index], badges: badges);
            },
          );
  }
}

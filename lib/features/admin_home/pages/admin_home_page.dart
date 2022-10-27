import 'package:captain_assignment/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/user/domain/entities/user_entity.dart';
import '../bloc/admin_bloc.dart';
import '../widgets/badge_count_widget.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  createState() => _AdminHomePage();
}

class _AdminHomePage extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyStrings.adminPageTitle),
        actions: [
          Tooltip(
              message: MyStrings.logoutText,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/login_page', (Route<dynamic> route) => false);
                  },
                  icon: const Icon(Icons.logout)))
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<AdminBloc, AdminState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                // get other users
                context.read<AdminBloc>().add(const AdminEvent.started());
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
                        context
                            .read<AdminBloc>()
                            .add(const AdminEvent.started()),
                  ),
                ],
              ),
              // showing data
              loaded: (users) => _ListOfUsers(users),
            );
          },
        ),
      ),
    );
  }

  Widget _ListOfUsers(List<UserEntity> users) {
    return users.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Center(child: Text(MyStrings.emptyListText))])
        : ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return BadgeCountWidget(
                user: users[index],
              );
            },
          );
  }
}

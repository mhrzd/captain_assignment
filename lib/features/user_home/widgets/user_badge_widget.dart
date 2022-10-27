import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assign_badge/domain/entities/assign_badge_entity.dart';
import '../../../core/assign_badge/domain/entities/badge_assignment_params.dart';
import '../../authentication/bloc/authentication_bloc.dart';
import '../bloc/user_bloc.dart';

class UserBadgeWidget extends StatelessWidget {
  const UserBadgeWidget({
    super.key, required this.badges, required this.user,

  });
  final List<BadgeEntity> badges;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(user.username),
        trailing: DropdownButton(
            underline: const SizedBox(),
            items: badges
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList(),
            value: context
                .read<UserBloc>()
                .myBadge(user, context.read<AuthBloc>().myUser!),
            onChanged: (v) {
              if (v != null) {
                context.read<UserBloc>().add(UserEvent.assignBadge(
                    BadgeAssignmentPrams(
                        user: user,
                        assigningBadge: AssignBadgeEntity(
                            assignedFromUsername:
                                context.read<AuthBloc>().myUser!.username,
                            badge: v))));
              }
            }),
      ),
    );
  }
}

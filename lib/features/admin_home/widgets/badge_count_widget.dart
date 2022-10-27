import 'package:captain_assignment/core/assign_badge/domain/entities/assign_badge_entity.dart';
import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/core/user/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';

class BadgeCountWidget extends StatelessWidget {
  const BadgeCountWidget({super.key, required this.user});
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(user.username),
          ),
          const Divider(
            height: 1,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: getDistinctBadges(user.badges)
                .map((badge) => _BadgeWithCount(
                    badge: badge, count: getBadgeCount(badge, user.badges)))
                .toList(),
          )
        ],
      ),
    );
  }

  List<BadgeEntity> getDistinctBadges(List<AssignBadgeEntity> badges) {
    return badges.map((e) => e.badge).toSet().toList();
  }

  int getBadgeCount(
    BadgeEntity badge,
    List<AssignBadgeEntity> badges,
  ) {
    int count = 0;
    badges.map((e) => e.badge).forEach((element) {
      if (badge == element) {
        count++;
      }
    });
    return count;
  }

  Widget _BadgeWithCount({required BadgeEntity badge, required int count}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
      child: Chip(label: Text('$count * ${badge.name}')),
    );
  }
}

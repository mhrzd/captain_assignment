import 'package:captain_assignment/core/badge/data/datasources/badge_datasource.dart';
import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/core/badge/domain/repositories/badge_repository.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';

class BadgeRepositoryImpl extends BadgeRepository {
  final BadgeDataSource dataSource;

  BadgeRepositoryImpl(this.dataSource);
  @override
  Future<ResponseState<List<BadgeEntity>>> getAllBadges() {
    return dataSource.getAllBadges();
  }
}

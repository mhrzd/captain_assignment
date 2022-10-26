import 'package:captain_assignment/core/badge/domain/entities/badge_entity.dart';
import 'package:captain_assignment/core/badge/domain/repositories/badge_repository.dart';
import 'package:captain_assignment/utils/resources/response_state.dart';
import 'package:captain_assignment/utils/usecase/usecase.dart';
import 'package:flutter/services.dart';

class GetAllBadgesUseCase
    extends UseCase<ResponseState<List<BadgeEntity>>, void> {
  final BadgeRepository repository;

  GetAllBadgesUseCase(this.repository);
  @override
  Future<ResponseState<List<BadgeEntity>>> call(void params) {
    return repository.getAllBadges();
  }
}

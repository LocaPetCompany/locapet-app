import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

@lazySingleton
class PostCurrentServerVersionUsecase
    implements UseCase<CurrentVersionResponseEntity, CurrentVersionRequestDto> {
  final ServerCheckRepository _repository;

  PostCurrentServerVersionUsecase(this._repository);

  @override
  Future<Either<Failure, CurrentVersionResponseEntity>> call(
    CurrentVersionRequestDto params,
  ) async {
    try {
      return await _repository.postServerCheck(params);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';

@LazySingleton(as: ServerCheckRepository)
class ServerCheckRepositoryImpl implements ServerCheckRepository {
  final ServerCheckApi _serverCheckApi;

  ServerCheckRepositoryImpl(this._serverCheckApi);

  @override
  Future<Either<Failure, CurrentVersionResponseEntity>> postServerCheck(
    CurrentVersionRequestDto body,
  ) async {
    try {
      final dto = await _serverCheckApi.postServerCheck(body);
      return Right(dto.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

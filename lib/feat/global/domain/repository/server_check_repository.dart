import 'package:dartz/dartz.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';

abstract class ServerCheckRepository {
  Future<Either<Failure, CurrentVersionResponseEntity>> postServerCheck(
    CurrentVersionRequestDto body,
  );
}

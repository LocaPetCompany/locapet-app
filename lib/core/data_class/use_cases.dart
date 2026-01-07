import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:locapet/core/data_class/failures.dart';

/// 비즈니스 로직을 캡슐화하는 최상위 UseCase 인터페이스
abstract class UseCase<T, Params> {
  /// UseCase 실행 메서드
  Future<Either<Failure, T>> call(Params params);
}

/// 파라미터가 필요 없는 경우 사용하는 클래스
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

import 'package:equatable/equatable.dart';

/// 실패를 나타내는 추상 기본 클래스
abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

/// 서버와의 통신 실패를 나타내는 클래스
class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

/// 로컬 캐시 작업 실패를 나타내는 클래스
class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

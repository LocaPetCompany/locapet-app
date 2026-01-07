import 'package:dio/dio.dart';
import 'package:locapet/feat/global/data/dto/request/current_version_request_dto.dart';
import 'package:locapet/feat/global/data/dto/response/current_version_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'server_check_api.g.dart';

/// 서버 상태 및 버전 체크와 관련된 API를 정의하는 추상 클래스입니다.
///
/// [retrofit]을 사용하여 빌드 시 실제 구현이 자동으로 생성됩니다.
@RestApi()
abstract class ServerCheckApi {
  /// [ServerCheckApi]의 인스턴스를 생성합니다.
  ///
  /// [injectable]을 통해 주입된 [Dio] 인스턴스를 사용합니다.
  factory ServerCheckApi(Dio dio) = _ServerCheckApi;

  // TODO: 실제 서버의 API 엔드포인트로 교체해야 합니다.
  @POST('서버체크하는 api주소')
  Future<CurrentVersionResponseDto> postServerCheck(
    @Body() CurrentVersionRequestDto body,
  );
}

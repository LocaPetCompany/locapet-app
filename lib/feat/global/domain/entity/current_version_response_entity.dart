import 'package:locapet/export/package.dart';

part 'current_version_response_entity.freezed.dart';

@freezed
abstract class CurrentVersionResponseEntity
    with _$CurrentVersionResponseEntity {
  const factory CurrentVersionResponseEntity({
    required String serverStatus,
    required String version,
  }) = _CurrentVersionResponseEntity;
}

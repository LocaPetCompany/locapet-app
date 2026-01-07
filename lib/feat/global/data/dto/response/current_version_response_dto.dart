import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

part 'current_version_response_dto.g.dart';

@JsonSerializable()
class CurrentVersionResponseDto {
  @JsonKey(name: 'server_status')
  final String serverStatus;
  @JsonKey(name: 'version')
  final String version;

  const CurrentVersionResponseDto({
    required this.serverStatus,
    required this.version,
  });

  factory CurrentVersionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentVersionResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentVersionResponseDtoToJson(this);

  CurrentVersionResponseEntity toEntity() {
    return CurrentVersionResponseEntity(
      serverStatus: serverStatus,
      version: version,
    );
  }
}

import 'package:locapet/export/package.dart';

part 'current_version_request_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentVersionRequestDto {
  @JsonKey(defaultValue: '')
  final String version;

  const CurrentVersionRequestDto({required this.version});

  factory CurrentVersionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentVersionRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentVersionRequestDtoToJson(this);
}

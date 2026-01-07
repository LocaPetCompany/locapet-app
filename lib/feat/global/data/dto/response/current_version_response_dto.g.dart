// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_version_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentVersionResponseDto _$CurrentVersionResponseDtoFromJson(
  Map<String, dynamic> json,
) => CurrentVersionResponseDto(
  serverStatus: json['server_status'] as String,
  version: json['version'] as String,
);

Map<String, dynamic> _$CurrentVersionResponseDtoToJson(
  CurrentVersionResponseDto instance,
) => <String, dynamic>{
  'server_status': instance.serverStatus,
  'version': instance.version,
};

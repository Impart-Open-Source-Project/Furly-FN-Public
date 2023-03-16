// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseApiResponse _$$_BaseApiResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseApiResponse(
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$_BaseApiResponseToJson(_$_BaseApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_ws_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseWsResponse _$$_BaseWsResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseWsResponse(
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      operate: json['operate'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$_BaseWsResponseToJson(_$_BaseWsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'operate': instance.operate,
      'data': instance.data,
    };

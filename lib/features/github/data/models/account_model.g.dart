// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$_$_AccountModelFromJson(Map<String, dynamic> json) {
  return _$_AccountModel(
    platform: json['platform'] as String,
    domain: json['domain'] as String,
    token: json['token'] as String,
    login: json['login'] as String,
    avatarUrl: json['avatarUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'domain': instance.domain,
      'token': instance.token,
      'login': instance.login,
      'avatarUrl': instance.avatarUrl,
    };

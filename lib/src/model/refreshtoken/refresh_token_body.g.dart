// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenBody _$RefreshTokenBodyFromJson(Map<String, dynamic> json) {
  return RefreshTokenBody(
      json['accessToken'] as String, json['refreshToken'] as String);
}

Map<String, dynamic> _$RefreshTokenBodyToJson(RefreshTokenBody instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken
    };

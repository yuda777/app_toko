import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_body.g.dart';

@JsonSerializable()
class RefreshTokenBody {
  @JsonKey(name: 'accessToken')
  String accessToken;
  @JsonKey(name: 'refreshToken')
  String refreshToken;
  @JsonKey(ignore: true)
  String error;

  RefreshTokenBody(this.accessToken, this.refreshToken);

  factory RefreshTokenBody.fromJson(Map<String, dynamic> json) => _$RefreshTokenBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenBodyToJson(this);

  @override
  String toString() {
    return 'RefreshTokenBody{accessToken: $accessToken, refreshToken: $refreshToken}';
  }
}

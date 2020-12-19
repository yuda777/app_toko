import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  @JsonKey(name: 'accessToken')
  String accessToken;
  @JsonKey(name: 'refreshToken')
  String refreshToken;
  @JsonKey(ignore: true)
  String error;

  Token(this.accessToken, this.refreshToken,);

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Token.withError(this.error);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  String toString() {
    return 'Token{accessToken: $accessToken, refreshToken: $refreshToken}';
  }
}

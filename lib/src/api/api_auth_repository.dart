import 'package:app_toko/src/api/api_auth_provider.dart';
import 'package:app_toko/src/model/diagnostic/diagnostic.dart';
import 'package:app_toko/src/model/login/login_body.dart';
import 'package:app_toko/src/model/refreshtoken/refresh_token_body.dart';
import 'package:app_toko/src/model/register/register.dart';
import 'package:app_toko/src/model/token/token.dart';
import 'package:app_toko/src/model/user/user.dart';
import 'package:app_toko/src/model/item/item.dart';

class ApiAuthRepository {
  final ApiAuthProvider _apiAuthProvider = ApiAuthProvider();

  Future<Diagnostic> postRegisterUser(Register register) => _apiAuthProvider.registerUser(register);

  Future<Token> postLoginUser(LoginBody loginBody) => _apiAuthProvider.loginUser(loginBody);

  Future<Token> postRefreshAuth(RefreshTokenBody refreshTokenBody) => _apiAuthProvider.refreshAuth(refreshTokenBody);
  
  Future<User> fetchAllUsers() => _apiAuthProvider.getAllUsers();

  Future<dynamic> logOut(RefreshTokenBody refreshTokenBody) => _apiAuthProvider.logOut(refreshTokenBody);
}

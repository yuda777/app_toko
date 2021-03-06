import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_toko/src/model/diagnostic/diagnostic.dart';
import 'package:app_toko/src/model/login/login_body.dart';
import 'package:app_toko/src/model/refreshtoken/refresh_token_body.dart';
import 'package:app_toko/src/model/register/register.dart';
import 'package:app_toko/src/model/token/token.dart';
import 'package:app_toko/src/model/user/user.dart';
// import 'package:app_toko/src/model/item/item.dart';
import 'package:app_toko/src/utils/dio_logging_interceptors.dart';

class ApiAuthProvider {
  final Dio _dio = new Dio();
  // final String _baseUrl = 'http://bengkelrobot.net:8002/';
  final String _baseUrl = 'http://192.168.0.113:3000/';
  // final String clientId = 'bengkel-robot-client';
  // final String clientSecret = 'bengkel-robot-secret';

  ApiAuthProvider() {
    _dio.options.baseUrl = _baseUrl;
    _dio.interceptors.add(DioLoggingInterceptors(_dio));
  }

  Future<Diagnostic> registerUser(Register register) async {
    try {
      final response = await _dio.post(
        'register/user',
        data: register.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return Diagnostic.fromJson(response.data);
    } catch (error, stacktrace) {
      _printError(error, stacktrace);
      return Diagnostic.withError('$error');
    }
  }

  // data: FormData.fromMap(loginBody.toJson()),
  // data: '{ "username": "hendri4@abc.com", "password": "1234"}',
  Future<Token> loginUser(LoginBody loginBody) async {
    try {
      print(loginBody.toJson());
      final response = await _dio.post(
        'auth/login',
        data: loginBody.toJson(),
      );            
      return Token.fromJson(response.data);
    } catch (error, stacktrace) {
      _printError(error, stacktrace);
      return Token.withError('$error');
    }
  }

  Future<Token> refreshAuth(RefreshTokenBody refreshTokenBody) async {
    try {
      final response = await _dio.post(
        'auth/refresh-token',
        data: refreshTokenBody.toJson(),
      );
      
      return Token.fromJson(response.data);
    } catch (error, stacktrace) {
      _printError(error, stacktrace);
      return Token.withError('$error');
    }
  }  
  
  Future<dynamic> logOut(RefreshTokenBody refreshTokenBody) async {
    try {
      final response = await _dio.delete(
        'auth/logout',
        data: refreshTokenBody.toJson(),
      );
      
      return response.statusCode;
    } catch (error, stacktrace) {
      _printError(error, stacktrace);
      //return Token.withError('$error');
    }
  }

  Future<User> getAllUsers() async {
    try {
      print('getAllUsers');
      final response = await _dio.get(
        // 'users/user',
        '',
        options: Options(
          headers: {
            'requirestoken': true,
          },
        ),
      );
      return User.fromJson(response.data);
    } catch (error, stacktrace) {
      _printError(error, stacktrace);
      return User.withError('$error');
    }
  }

  void _printError(error, StackTrace stacktrace) {
    debugPrint('error: $error & stacktrace: $stacktrace');
  }
}

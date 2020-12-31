import 'package:flutter/material.dart';
import 'package:app_toko/src/injector/injector.dart';
import 'package:app_toko/src/storage/sharedpreferences/shared_preferences_manager.dart';
import 'package:app_toko/src/ui/dashboarduser/dashboard_user_screen.dart';
import 'package:app_toko/src/ui/login/login_screen.dart';
import 'package:app_toko/src/ui/register/register_screen.dart';

class App extends StatelessWidget {
  final SharedPreferencesManager _sharedPreferencesManager = locator<SharedPreferencesManager>();

  @override
  Widget build(BuildContext context) {
    bool _isAlreadyLoggedIn = _sharedPreferencesManager.isKeyExists(SharedPreferencesManager.keyIsLogin)
        ? _sharedPreferencesManager.getBool(SharedPreferencesManager.keyIsLogin)
        : false;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFF06038),
      ),
      home: _isAlreadyLoggedIn ? DashboardUserScreen() : LoginScreen(),
      routes: {
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/dashboard_user_screen': (context) => DashboardUserScreen(),
      },
    );
  }
}

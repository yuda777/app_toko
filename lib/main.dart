import 'package:flutter/material.dart';
import 'package:app_toko/src/injector/injector.dart';
import 'package:app_toko/src/ui/app.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();
    runApp(App());
  } catch (error, stacktrace) {
    print('$error & $stacktrace');
  }
}

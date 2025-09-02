import 'package:flutter/material.dart';
/* import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/reset_password_screen.dart';
*/
import 'screens/homwork.dart';

void main() {
  runApp(const AppStoreApp());
}

class AppStoreApp extends StatelessWidget {
  const AppStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppStore',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Details(),
    );
  }
} 

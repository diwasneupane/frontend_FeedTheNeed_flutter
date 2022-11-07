import 'package:feedtheneed/screens/login.dart';
import 'package:feedtheneed/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        // '/': (context) => const WearOs(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    ),
  );
}

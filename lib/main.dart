import 'package:feedtheneed/screens/dashboard.dart';
import 'package:feedtheneed/screens/login.dart';
import 'package:feedtheneed/screens/navigation.dart';
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
        '/dashboard': (context) => const Dashboard(),
        '/navigation': (context) => const Navigation(),
      },
    ),
  );
}

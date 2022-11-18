import 'package:feedtheneed/screens/dashboard.dart';
import 'package:feedtheneed/screens/helpandsupport.dart';
import 'package:feedtheneed/screens/login.dart';
import 'package:feedtheneed/screens/myaccount.dart';
import 'package:feedtheneed/screens/navigation.dart';
import 'package:feedtheneed/screens/profile.dart';
import 'package:feedtheneed/screens/register.dart';
import 'package:feedtheneed/screens/update_profile.dart';
import 'package:feedtheneed/screens/information.dart';
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
        '/profile': (context) => const Profile(),
        '/update': (context) => const Update(),
        '/account': (context) => const MyAccount(),
        '/helpandsupport': (context) => const Helpandsupport(),
        '/information': (context) => const Information(),
      },
    ),
  );
}

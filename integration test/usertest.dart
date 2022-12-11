// import 'package:feedtheneed/screens/login.dart';
// import 'package:feedtheneed/screens/register.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';

// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//   testWidgets('Login test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         routes: {
//           '/login': (context) => const Login(),
//         },
//         home: const Login(),
//       ),
//     );
//     Finder email = find.byKey(const ValueKey('email'));
//     await tester.enterText(email, 'diwas@gmail.com');
//     Finder password = find.byKey(const ValueKey('password'));
//     await tester.enterText(password, 'Diw@s123');
//     Finder btnLogin = find.byKey(const ValueKey('btnLogin'));
//     await tester.tap(warnIfMissed: false, btnLogin);
//     await tester.pumpAndSettle();
//     expect(find.byType(ElevatedButton), findsOneWidget);
//   });
//   testWidgets('register user test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       // ignore: prefer_const_constructors
//       MaterialApp(
//         routes: {
//           '/register': (context) => const Register(),
//         },
//         home: const Register(),
//       ),
//     );
//     // Finder title = find.text('Arithmetics');
//     // expect(title, findsOneWidget);
//     Finder email = find.byKey(const ValueKey('email'));
//     await tester.enterText(email, 'diwas1@gmail.com');
//     Finder phone = find.byKey(const ValueKey('phone'));
//     await tester.enterText(phone, '9847078571');
//     Finder password = find.byKey(const ValueKey('password'));
//     await tester.enterText(password, 'Diw@s123');

//     Finder btnSignup = find.byKey(const ValueKey('btnSignup'));
//     await tester.pumpAndSettle();
//     await tester.tap(btnSignup, warnIfMissed: false);

//     expect(find.byType(ElevatedButton), findsOneWidget);
//   });
// }

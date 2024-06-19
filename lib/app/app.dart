import 'package:flutter/material.dart';
import 'package:push_notification_cli/pages/check_user.dart';
import 'package:push_notification_cli/pages/home_page.dart';
import 'package:push_notification_cli/pages/signin_page.dart';

import '../pages/login_page.dart';
import '../pages/message.dart';
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const CheckUser(),
        "/login" : (context) => const LoginPage(),
        "/signup": (context) => const SignUpPage(),
        "/home": (context) => const HomePage(),
        "/message":(context) => const Message(),
      },
    );
  }
}

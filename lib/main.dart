import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/login_page.dart';
import 'package:lafyuu/Screens/main_screen.dart';
import 'package:lafyuu/Screens/signup_page.dart';
import 'package:lafyuu/Screens/splash_screen.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(const Lafyuu());
}

class Lafyuu extends StatelessWidget {
  const Lafyuu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: LoginPage.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        MainScreen.id: (context) => const MainScreen(),
        SplashScreen.id: (context) => const SplashScreen(),
        LoginPage.id: (context) => const LoginPage(),
        SignupPage.id: (context) => const SignupPage(),
      },
    );
  }
}

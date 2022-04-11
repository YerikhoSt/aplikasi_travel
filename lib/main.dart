import 'package:aplikasi_travel/ui/pages/bonus_page.dart';
import 'package:aplikasi_travel/ui/pages/get_started_page.dart';
import 'package:aplikasi_travel/ui/pages/main_page.dart';
import 'package:aplikasi_travel/ui/pages/sign_up_page.dart';
import 'package:aplikasi_travel/ui/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SplashPage(),
        '/get-started':(context) => const GetStartedPage(),
        '/sign-up':(context) => const SignUpPage(),
        '/bonus-page':(context) => const BonusPage(),
        '/main-page':(context) => const MainPage(),
      },
    );
  }
}
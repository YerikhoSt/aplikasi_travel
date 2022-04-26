import 'package:aplikasi_travel/auth/auth_cubit.dart';
import 'package:aplikasi_travel/auth/destination_cubit.dart';
import 'package:aplikasi_travel/auth/page_cubit.dart';
import 'package:aplikasi_travel/auth/seat_cubit.dart';
import 'package:aplikasi_travel/auth/transaction_cubit.dart';
import 'package:aplikasi_travel/pages/bonus_page.dart';
import 'package:aplikasi_travel/pages/get_started_page.dart';
import 'package:aplikasi_travel/pages/main_page.dart';
import 'package:aplikasi_travel/pages/sign_in_page.dart';
import 'package:aplikasi_travel/pages/sign_up_page.dart';
import 'package:aplikasi_travel/pages/splash.dart';
import 'package:aplikasi_travel/pages/success_checkout_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus-page': (context) => const BonusPage(),
          '/main-page': (context) => const MainPage(),
          '/success': (context) => const SuccessCheckoutPage()
        },
      ),
    );
  }
}

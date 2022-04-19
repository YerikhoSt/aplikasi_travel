import 'package:aplikasi_travel/cubit/page_cubit.dart';
import 'package:aplikasi_travel/ui/pages/home_page.dart';
import 'package:aplikasi_travel/ui/pages/setting_page.dart';
import 'package:aplikasi_travel/ui/pages/transacation_page.dart';
import 'package:aplikasi_travel/ui/pages/wallet_page.dart';
import 'package:aplikasi_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              customBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              customBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              customBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
                index: 2,
              ),
              customBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Stack(
              children: [
                buildContent(currentIndex),
                customBottomNavigation(),
              ],
            ));
      },
    );
  }
}

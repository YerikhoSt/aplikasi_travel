import 'package:aplikasi_travel/ui/pages/home_page.dart';
import 'package:aplikasi_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
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
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              customBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
                isSelected: false,
              ),
              customBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
                isSelected: false,
              ),
              customBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            buildContent(),
            customBottomNavigation(),
          ],
        ));
  }
}

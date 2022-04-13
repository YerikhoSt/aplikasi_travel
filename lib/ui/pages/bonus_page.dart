import 'package:aplikasi_travel/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 310,
        height: 221,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_card.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Kezia Anne',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_plane.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Pay',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 41,
              ),
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontWeight: light),
              ),
              Text(
                'IDR 280.000.000',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that \nyou can buy a flight ticket',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
        title: 'Start Fly Now',
        width: 220,
        margin: const EdgeInsets.only(top: 50),
        onPressed: () {
          Navigator.pushNamed(context, '/main-page');
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subTitle(), startButton()],
        ),
      ),
    );
  }
}

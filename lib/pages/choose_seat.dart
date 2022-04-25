import 'package:aplikasi_travel/pages/checkout_page.dart';
import 'package:aplikasi_travel/widgets/custom_button.dart';
import 'package:aplikasi_travel/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/utils/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
        ),
        child: Row(
          children: [
            // AVAILABLE
            Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            // SELECTED
            Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            //UNAVAILABLE
            Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 25,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            // SEAT ALFABET
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // SEAT 1
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                  id: 'A1',
                ),
                SeatItem(
                  status: 2,
                  id: 'B1',
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                  id: 'C1',
                ),
                SeatItem(
                  status: 2,
                  id: 'D1',
                ),
              ],
            ),
            // SEAT 2
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                  id: 'A2',
                ),
                SeatItem(
                  status: 0,
                  id: 'B2',
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                  id: 'C2',
                ),
                SeatItem(
                  status: 2,
                  id: 'D2',
                ),
              ],
            ),
            // SEAT 3
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                  id: 'A3',
                ),
                SeatItem(
                  status: 1,
                  id: 'B3',
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                  id: 'C3',
                ),
                SeatItem(
                  status: 0,
                  id: 'D3',
                ),
              ],
            ),
            // SEAT 4
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                  id: 'A4',
                ),
                SeatItem(
                  status: 2,
                  id: 'B4',
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                  id: 'C4',
                ),
                SeatItem(
                  status: 0,
                  id: 'D4',
                ),
              ],
            ),
            // SEAT 5
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                  id: 'A5',
                ),
                SeatItem(
                  status: 0,
                  id: 'B5',
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 2,
                  id: 'C5',
                ),
                SeatItem(
                  status: 0,
                  id: 'D5',
                ),
              ],
            ),

            // YOUR SEAT
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),

            // TOTAL
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(
          top: 25,
          bottom: 20,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
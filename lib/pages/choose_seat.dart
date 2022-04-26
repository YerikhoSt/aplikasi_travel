import 'package:aplikasi_travel/auth/seat_cubit.dart';
import 'package:aplikasi_travel/menus/destination_model.dart';
import 'package:aplikasi_travel/menus/transaction_model.dart';
import 'package:aplikasi_travel/pages/checkout_page.dart';
import 'package:aplikasi_travel/widgets/custom_button.dart';
import 'package:aplikasi_travel/widgets/seat_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/utils/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
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
        margin: const EdgeInsets.only(
          top: 25,
        ),
        child: Row(
          children: [
            // AVAILABLE
            Container(
              width: 15,
              height: 15,
              margin: const EdgeInsets.only(
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: const DecorationImage(
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
              margin: const EdgeInsets.only(
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
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
              margin: const EdgeInsets.only(
                right: 6,
              ),
              decoration: const BoxDecoration(
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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (BuildContext context, List<String> state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 25,
            ),
            padding: const EdgeInsets.symmetric(
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
                    const SeatItem(
                      id: 'A1',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'C1',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'A2',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'C2',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'A3',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'C3',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'A4',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'C4',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'A5',
                    ),
                    const SeatItem(
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
                    const SeatItem(
                      id: 'C5',
                    ),
                    const SeatItem(
                      id: 'D5',
                    ),
                  ],
                ),

                // YOUR SEAT
                Container(
                  margin: const EdgeInsets.only(
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
                        state.join(', '),
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
                  margin: const EdgeInsets.only(
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
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(state.length * destination.price),
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
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (BuildContext context, List<String> state) {
          return CustomButton(
            title: 'Continue to Checkout',
            onPressed: () {
              int price = destination.price * state.length;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CheckoutPage(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeats: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
            margin: const EdgeInsets.only(
              top: 25,
              bottom: 20,
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
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

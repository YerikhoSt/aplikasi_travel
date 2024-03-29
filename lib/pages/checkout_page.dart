import 'package:aplikasi_travel/auth/auth_cubit.dart';
import 'package:aplikasi_travel/auth/transaction_cubit.dart';
import 'package:aplikasi_travel/menus/transaction_model.dart';
import 'package:aplikasi_travel/pages/success_checkout_page.dart';
import 'package:aplikasi_travel/widgets/booking_detail_item.dart';
import 'package:aplikasi_travel/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/utils/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;

  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

  Widget route() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: [
          Container(
            width: 291,
            height: 65,
            margin: const EdgeInsets.only(
              bottom: 8,
            ),
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image: const AssetImage(
                  'assets/image_checkout.png',
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    transaction.destination.city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bookingDetails() {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DESTINATION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      transaction.destination.imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_star.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // BOOKING DETAILS
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          BookingDetailItem(
            title: 'Traveler',
            valueText: '${transaction.amountOfTraveler} Person',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Seat',
            valueText: transaction.selectedSeats,
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Insurance',
            valueText: transaction.insurance ? 'YES' : 'NO',
            valueColor: transaction.insurance ? kGreenColor : kRedColor,
          ),
          BookingDetailItem(
            title: 'Refundable',
            valueText: transaction.refundable ? 'YES' : 'NO',
            valueColor: transaction.refundable ? kGreenColor : kRedColor,
          ),
          BookingDetailItem(
            title: 'VAT',
            valueText: '${transaction.vat * 100}%',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Price',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.price),
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.grandTotal),
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Details',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        margin: const EdgeInsets.only(
                          right: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/image_card.png',
                            ),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                margin: const EdgeInsets.only(
                                  right: 6,
                                ),
                                decoration: const BoxDecoration(
                                  image: const DecorationImage(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'IDR ',
                                decimalDigits: 0,
                              ).format(state.user.balance),
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: medium,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'current balance',
                              style: greyTextStyle.copyWith(
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget payButton(BuildContext context) {
    return BlocConsumer<TransactionCubit, TransactionState>(
      listener: (context, state) {
        if (state is TransactionSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/success', (route) => false);
        } else if (state is TransactionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 30),
            child: const CircularProgressIndicator(),
          );
        }

        return CustomButton(
          title: 'Pay Now',
          onPressed: () {
            context.read<TransactionCubit>().createTransaction(transaction);
          },
          margin: const EdgeInsets.only(
            top: 25,
          ),
        );
      },
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 33,
      ),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          payButton(context),
          tacButton(),
        ],
      ),
    );
  }
}

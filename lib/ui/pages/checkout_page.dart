import 'package:aplikasi_travel/ui/pages/success_checkout_page.dart';
import 'package:aplikasi_travel/ui/widgets/booking_detail_item.dart';
import 'package:aplikasi_travel/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  Widget route() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: [
          Container(
            width: 291,
            height: 65,
            margin: EdgeInsets.only(
              bottom: 8,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
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
                    'Ciliwung',
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
      margin: EdgeInsets.only(
        top: 25,
      ),
      padding: EdgeInsets.symmetric(
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
                margin: EdgeInsets.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/image_destination1.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tangerang',
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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_star.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '4.8',
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
            margin: EdgeInsets.only(
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
            valueText: '2 Person',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Seat',
            valueText: 'A3, B3',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Insurance',
            valueText: 'YES',
            valueColor: kGreenColor,
          ),
          BookingDetailItem(
            title: 'Refundable',
            valueText: 'NO',
            valueColor: kRedColor,
          ),
          BookingDetailItem(
            title: 'VAT',
            valueText: '45%',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Price',
            valueText: 'IDR 8.500.690',
            valueColor: kBlackColor,
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueText: 'IDR 12.000.000',
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return Container(
      margin: EdgeInsets.symmetric(
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
            margin: EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: EdgeInsets.only(
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
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
                          margin: EdgeInsets.only(
                            right: 6,
                          ),
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
                        'IDR 80.400.000',
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

  Widget payButton(BuildContext context) {
    return CustomButton(
      title: 'Pay Now',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return SuccessCheckoutPage();
            },
          ),
        );
      },
      margin: EdgeInsets.only(
        top: 25,
      ),
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

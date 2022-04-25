import 'package:aplikasi_travel/menus/destination_model.dart';
import 'package:aplikasi_travel/pages/choose_seat.dart';
import 'package:aplikasi_travel/widgets/custom_button.dart';
import 'package:aplikasi_travel/widgets/interest_item.dart';
import 'package:aplikasi_travel/widgets/photos_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_travel/utils/theme.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;

  const DetailPage(this.destination, {Key? key}) : super(key: key);

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            destination.imageUrl,
          ),
        ),
      ),
    );
  }

  Widget customShadow() {
    return Container(
      width: double.infinity,
      height: 134,
      margin: const EdgeInsets.only(
        top: 160,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95),
          ],
        ),
      ),
    );
  }

  Widget content(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        children: [
          // ICON
          Container(
            width: 108,
            height: 24,
            margin: const EdgeInsets.only(
              top: 25,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_emblem.png',
                ),
              ),
            ),
          ),
          // TITLE
          Container(
            margin: const EdgeInsets.only(
              top: 126,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        destination.city,
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
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
                      destination.rating.toString(),
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // DESCRIPTION
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 20,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ABOUT
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style: blackTextStyle.copyWith(
                    height: 1.6,
                  ),
                ),

                // PHOTOS
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: const [
                    PhotosItem(
                      imageUrl: 'assets/image_photo1.png',
                    ),
                    PhotosItem(
                      imageUrl: 'assets/image_photo2.png',
                    ),
                    PhotosItem(
                      imageUrl: 'assets/image_photo3.png',
                    ),
                  ],
                ),

                // INTEREST
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Interest',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: const [
                    InterestItem(
                      text: 'Kids Text',
                    ),
                    InterestItem(
                      text: 'Honor Bridge',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    InterestItem(
                      text: 'City Museum',
                    ),
                    InterestItem(
                      text: 'Central Mall',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // PRICE
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(destination.price),
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Per orang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),

                // BUTTON
                CustomButton(
                  title: 'Book Now',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ChooseSeatPage();
                        },
                      ),
                    );
                  },
                  width: 160,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(context),
          ],
        ),
      ),
    );
  }
}

import 'package:aplikasi_travel/ui/widgets/custom_button.dart';
import 'package:aplikasi_travel/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Passwordddd',
          hintText: 'Your Password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: "Let's Go",
          margin: const EdgeInsets.only(
            top: 20,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/bonus-page');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 25),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 0,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
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

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}

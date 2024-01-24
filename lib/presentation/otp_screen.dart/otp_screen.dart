import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/presentation/home_screen/home_screen.dart';
import 'package:spire_e_doctors/widgets/app_bar/custom_app_bar.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      appBar: _buildAppBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.v),
            Text(
              "Enter Your OTP Here.",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 30.v),
            OtpTextField(
              textStyle: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 18.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
              numberOfFields: 6,
              fieldWidth: 50.v,
              enabledBorderColor: Color(0XFF11B8BE),
              focusedBorderColor: Colors.red,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Not yet get?  ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16.adaptSize,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.adaptSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: ''),
                ),
              ],
            ),
            SizedBox(height: 50.v),
            _buildSendOtp(context)
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    title: Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.all(8.adaptSize),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                      spreadRadius: 1)
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20.adaptSize,
                ),
              ),
            ),
            Spacer(),
            Text(
              'Verify Phone Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 10.v),
        Opacity(
          opacity: 0.5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildSendOtp(BuildContext context) {
  return CustomElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => HomeScreen())));
      },
      text: "Verify Otp");
}

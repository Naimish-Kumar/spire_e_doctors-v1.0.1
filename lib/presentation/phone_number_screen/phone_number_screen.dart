import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/presentation/otp_screen.dart/otp_screen.dart';
import 'package:spire_e_doctors/widgets/app_bar/custom_app_bar.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
      backgroundColor: appTheme.gray100,
      appBar: _buildAppBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.v),
        child: Column(
          children: [
            SizedBox(height: 50.v),
            Text(
              "We have sent you on SMS with code to number +91*** *** *** ",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 30.v),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0XFF11B8BE).withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                    spreadRadius: 10,
                  
                  )
                ]
              ),
              child: IntlPhoneField(
                flagsButtonMargin: EdgeInsets.only(left: 10.adaptSize),
                dropdownTextStyle: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                showDropdownIcon: false,
                decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16.adaptSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 15.adaptSize, horizontal: 20.adaptSize),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.adaptSize)),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            SizedBox(height: 50.v),
            _buildSendOtp(context)
          ],
        ),
      ),)
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
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(),
            ),
          );
        },
        text: "Send Otp");
  }

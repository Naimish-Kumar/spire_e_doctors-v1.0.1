import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/verification_done/verification_done_screen.dart';

class PhoneVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
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
                            ]),
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
                        'Phone Verification',
                        style: TextStyle(
                            fontFamily: 'Barlow',
                            fontSize: 18.adaptSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.adaptSize),
                    child: Text(
                      'Enter your OTP code here',
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 17.adaptSize,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 3),
                        spreadRadius: 5,
                      )
                    ]),
                    child: OtpPinField(
                      fieldHeight: 55.h,
                      fieldWidth: 55.v,
                      textInputAction: TextInputAction.done,
                      onSubmit: (text) {
                        print('Entered pin is $text');
                      },
                      onChange: (text) {
                        print('Enter on change pin is $text');
                      },
                      onCodeChanged: (code) {
                        print('onCodeChanged  is $code');
                      },
                      otpPinFieldDecoration:
                          OtpPinFieldDecoration.roundedPinBoxDecoration,
                      otpPinFieldStyle: OtpPinFieldStyle(
                          textStyle: TextStyle(
                            fontSize: 20.adaptSize,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                          defaultFieldBackgroundColor: Colors.white,
                          filledFieldBackgroundColor: AppColors.secondary,
                          defaultFieldBorderColor: Colors.transparent,
                          activeFieldBorderColor: AppColors.secondary),
                      maxLength: 5,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.adaptSize),
                    child: Text(
                      'Didn\'t you received any code?',
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 17.adaptSize,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.adaptSize),
                    child: Text(
                      'Resend a new Code.',
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 17.adaptSize,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Card(
                    elevation: 10,
                    color: AppColors.primary,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerificationDoneScreen()),
                        );
                      },
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10.adaptSize),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Verify",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.adaptSize,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                                color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

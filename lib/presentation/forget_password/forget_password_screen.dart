import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/change_password/change_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final PhoneController phoneController =
      PhoneController(PhoneNumber(isoCode: IsoCode.IN, nsn: ''));
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
                        'Forgot Password',
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
                      'Please enter your email address. You will receive a link to create a new password via email.',
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 17.adaptSize,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.05),
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                        spreadRadius: 3,
                      )
                    ]),
                    child: TextFormField(
                      cursorColor: AppColors.darkPrimary,
                      textAlignVertical: TextAlignVertical.top,
                      selectionControls: EmptyTextSelectionControls(),
                      style: TextStyle(
                        fontSize: 18.adaptSize,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check_circle_outline_rounded,
                            size: 28.adaptSize, color: Colors.green),
                        filled: true,
                        label: Text(
                          'Email Address',
                          style: TextStyle(
                              fontFamily: 'Barlow',
                              fontSize: 18.adaptSize,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600),
                        ),
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.adaptSize),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Card(
                    elevation: 10,
                    color: AppColors.primary,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: ChangePasswordScreen(),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                          ),
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
                            "Change Password",
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

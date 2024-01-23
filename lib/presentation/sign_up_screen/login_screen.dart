import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/forget_password/forget_password_screen.dart';
import 'package:spire_e_doctors/presentation/verify_phone_number/verify_phone_number.dart';

class LoginScreen extends StatelessWidget {
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
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 130.v,
                          width: 130.h,
                        ),
                        SizedBox(
                          height: 60.v,
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
                              suffixIcon: Icon(
                                  Icons.check_circle_outline_rounded,
                                  size: 28.adaptSize,
                                  color: Colors.green),
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
                                borderRadius:
                                    BorderRadius.circular(10.adaptSize),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
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
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              filled: true,
                              label: Text(
                                'Password',
                                style: TextStyle(
                                    fontFamily: 'Barlow',
                                    fontSize: 18.adaptSize,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600),
                              ),
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(10.adaptSize),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.v,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: ForgotPasswordScreen(),
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                ),
                              );
                            },
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontSize: 17.adaptSize,
                                  color: AppColors.secondary,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Card(
                          elevation: 10,
                          color: AppColors.primary,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  child: VerifyPhoneNumber(),
                                ),
                              );
                            },
                            child: Container(
                              height: 55.h,
                              decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius:
                                      BorderRadius.circular(10.adaptSize),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.primary.withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                      spreadRadius: 10,
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Sign In",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18.adaptSize,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.white)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          'Or Continue with',
                          style: TextStyle(
                              fontSize: 16.adaptSize,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w600,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23.adaptSize,
                              backgroundColor: Colors.red.withOpacity(0.2),
                              child: Padding(
                                padding: EdgeInsets.all(10.adaptSize),
                                child: Image.asset(
                                  'assets/images/google.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            CircleAvatar(
                              radius: 23.adaptSize,
                              backgroundColor: Colors.indigo.withOpacity(0.2),
                              child: Padding(
                                padding: EdgeInsets.all(8.adaptSize),
                                child:
                                    Image.asset('assets/images/facebook.png'),
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            CircleAvatar(
                              radius: 23.adaptSize,
                              backgroundColor: Colors.blue.withOpacity(0.2),
                              child: Padding(
                                padding: EdgeInsets.all(10.adaptSize),
                                child: Image.asset('assets/images/twitter.png'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(15.adaptSize),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                    fontSize: 16.adaptSize,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16.adaptSize,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 30.adaptSize,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

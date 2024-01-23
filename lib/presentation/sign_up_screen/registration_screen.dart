import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/sign_up_screen/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Create New Account",
                          style: TextStyle(
                              fontSize: 30.adaptSize,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w600,
                              color: AppColors.black),
                        ),
                        Text(
                          "Enter your details to create  account",
                          style: TextStyle(
                              fontSize: 14.adaptSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkPrimary),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.05),
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                    spreadRadius: 3,
                                  )
                                ],
                              ),
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
                                  focusedBorder: InputBorder.none,
                                  filled: true,
                                  label: Text(
                                    'Name',
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
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.05),
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                    spreadRadius: 3,
                                  )
                                ],
                              ),
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
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.05),
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                    spreadRadius: 3,
                                  )
                                ],
                              ),
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
                              height: 50.h,
                            ),
                            Card(
                              elevation: 10,
                              color: AppColors.primary,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.signUpScreen);
                                },
                                child: Container(
                                  height: 55.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius:
                                          BorderRadius.circular(10.adaptSize),
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.primary
                                              .withOpacity(0.1),
                                          blurRadius: 5,
                                          offset: const Offset(0, 3),
                                          spreadRadius: 10,
                                        ),
                                      ]),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
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
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              'Or Sign Up with',
                              style: TextStyle(
                                  fontSize: 18.adaptSize,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black),
                            ),
                            SizedBox(
                              height: 30.h,
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
                                  backgroundColor:
                                      Colors.indigo.withOpacity(0.2),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.adaptSize),
                                    child: Image.asset(
                                        'assets/images/facebook.png'),
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
                                    child: Image.asset(
                                        'assets/images/twitter.png'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    fontSize: 16.adaptSize,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300),
                      child: LoginScreen(),
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18.adaptSize,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

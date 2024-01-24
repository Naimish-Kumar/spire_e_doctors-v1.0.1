import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/validation_functions.dart';
import 'package:spire_e_doctors/presentation/forgot_password/forgot_password.dart';
import 'package:spire_e_doctors/presentation/phone_number_screen/phone_number_screen.dart';

import 'package:spire_e_doctors/widgets/custom_checkbox_button.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';
import 'package:spire_e_doctors/widgets/custom_text_form_field.dart';
import 'package:spire_e_doctors/domain/facebookauth/facebook_auth_helper.dart';
import 'package:spire_e_doctors/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      resizeToAvoidBottomInset: false,
      // appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Form(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
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
                    SizedBox(height: 20.v),
                    Center(
                      child: Text('Login To Your Account',
                          style: theme.textTheme.headlineLarge),
                    ),
                    SizedBox(height: 29.v),
                    _buildEmail(context),
                    SizedBox(height: 12.v),
                    _buildPassword(context),
                    SizedBox(height: 16.v),
                    _buildRememberMe(context),
                    SizedBox(height: 20.v),
                    _buildSignIn(context),
                    SizedBox(height: 35.v),
                    _buildOr(context),
                    SizedBox(height: 25.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL8,
                        onTap: () {
                          onTapBtnFacebook(context);
                        },
                        child: CustomImageView(
                            imagePath: 'assets/images/facebook.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: CustomIconButton(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL8,
                          onTap: () {
                            onTapBtnGoogle(context);
                          },
                          child: CustomImageView(
                              imagePath: 'assets/images/google.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            decoration: IconButtonStyleHelper.outlineBlackTL8,
                            child: Icon(
                              Icons.apple_rounded,
                              color: Colors.black,
                              size: 35.adaptSize,
                            )),
                      )
                    ]),
                  ]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.adaptSize),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('If you haven\'t account ?',
              style: CustomTextStyles.titleMediumff000000),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            },
            child: Row(
              children: [
                Text(
                  "lbl_sign_up".tr,
                  style: CustomTextStyles.titleMediumff000000,
                ),
                SizedBox(width: 5.h),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18.adaptSize,
                  color: Colors.black,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      hintText: "Enter Email/Mobile Number",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 16.v, 16.h, 12.v),
          child: CustomImageView(
              imagePath: ImageConstant.img1911,
              color: Colors.black,
              height: 20.adaptSize,
              width: 20.adaptSize)),
      prefixConstraints: BoxConstraints(maxHeight: 48.v),
      validator: (value) {
        if (!isValidEmail(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.all(12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                color: Colors.black,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        suffix: InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    color: Colors.black,
                    height: 20.adaptSize,
                    width: 20.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(vertical: 13.v));
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "lbl_remember_me".tr,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {},
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordScreen(),
              ),
            );
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16.adaptSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneNumberScreen(),
            ),
          );
        },
        text: "lbl_sign_in".tr);
  }

  /// Section Widget
  Widget _buildOr(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
        opacity: 0.08,
        child: Container(
          height: 2.v,
          width: 106.h,
          margin: EdgeInsets.only(top: 8.v, bottom: 9.v),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.38),
          ),
        ),
      ),
      Text("msg_or_continue_with".tr,
          style: CustomTextStyles.titleMediumGray700),
      Opacity(
        opacity: 0.08,
        child: Container(
          height: 2.v,
          width: 106.h,
          margin: EdgeInsets.only(top: 8.v, bottom: 9.v),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.38),
          ),
        ),
      )
    ]);
  }

  /// Navigates to the previous screen.
  onTapButtonBack(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapBtnFacebook(BuildContext context) async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError(
      (onError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              onError.toString(),
            ),
          ),
        );
      },
    );
  }

  onTapBtnGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        print(googleUser.displayName);
        print(googleUser.email);
        print(googleUser.photoUrl);
        print(googleUser.id);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('user data is empty'),
          ),
        );
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            onError.toString(),
          ),
        ),
      );
    });
  }
}

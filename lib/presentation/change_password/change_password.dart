import 'package:flutter/material.dart';

import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/validation_functions.dart';
import 'package:spire_e_doctors/presentation/done_screen/done_screen.dart';
import 'package:spire_e_doctors/widgets/app_bar/custom_app_bar.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';
import 'package:spire_e_doctors/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends StatelessWidget {
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
              "Create your new password ",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16.adaptSize,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 30.v),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0XFF11B8BE).withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                    spreadRadius: 10,
                  )
                ]),
                child: _buildPassword(context, 'enter new password')),
            SizedBox(height: 20.v),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0XFF11B8BE).withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                    spreadRadius: 10,
                  )
                ]),
                child: _buildPassword(context, "enter confirm password")),
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
              'Change Password',
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
        showDialog(
          
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                child: DoneScreen(),
              );
            });
      },
      text: "Change Password");
}

Widget _buildPassword(BuildContext context, String text) {
  return CustomTextFormField(
      hintText: text,
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
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 13.v));
}

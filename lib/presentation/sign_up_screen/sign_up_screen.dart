import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/validation_functions.dart';
import 'package:spire_e_doctors/widgets/app_bar/appbar_leading_image.dart';
import 'package:spire_e_doctors/widgets/app_bar/custom_app_bar.dart';
import 'package:spire_e_doctors/widgets/custom_checkbox_button.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';
import 'package:spire_e_doctors/widgets/custom_text_form_field.dart';
import 'package:spire_e_doctors/domain/facebookauth/facebook_auth_helper.dart';
import 'package:spire_e_doctors/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) => SignUpBloc(
              SignUpState(
                signUpModelObj: SignUpModel(),
              ),
            )..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.v),
              child: SafeArea(
                child: Column(children: [
                  Text("msg_create_your_account".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 29.v),
                  _buildCreateYourAccount(context),
                  SizedBox(height: 12.v),
                  _buildName(context),
                  SizedBox(height: 12.v),
                  _buildEmail(context),
                  SizedBox(height: 12.v),
                  _buildMobileNumber(context),
                  SizedBox(height: 12.v),
                  _buildPassword(context),
                  SizedBox(height: 16.v),
                  _buildRememberMe(context),
                  SizedBox(height: 20.v),
                  _buildSignUp(context),
                  SizedBox(height: 15.v),
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
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL8,
                          child: CustomImageView(
                              imagePath: 'assets/images/twitter.png'),),
                    )
                  ]),
                  SizedBox(height: 29.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_already".tr,
                            style: CustomTextStyles.titleMediumff666666),
                        TextSpan(
                            text: "msg_have_an_account".tr,
                            style: CustomTextStyles.titleMediumff666666),
                        TextSpan(
                            text: "lbl_sign_in".tr,
                            style: CustomTextStyles.titleMediumff000000)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgButtonBack,
        margin: EdgeInsets.fromLTRB(16.h, 10.v, 335.h, 10.v),
        onTap: () {
          onTapButtonBack(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateYourAccount(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.createYourAccountController,
      builder: (context, createYourAccountController) {
        return CustomTextFormField(
          controller: createYourAccountController,
          hintText: "lbl_your_name".tr,
          prefix: Container(
              margin: EdgeInsets.all(12.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  color: Colors.black,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.all(12.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLockBlack900,
                  color: Colors.black,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_enter_mobile_number".tr,
          textInputType: TextInputType.phone,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 16.v, 16.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.img1911,
                  color: Colors.black,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.mobileNumberController,
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
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
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
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v));
    });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordController,
          hintText: "msg_confirm_password".tr,
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
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent1(
                    value: !state.isShowPassword1));
              },
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
          obscureText: state.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v));
    });
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: BlocSelector<SignUpBloc, SignUpState, bool?>(
            selector: (state) => state.rememberMe,
            builder: (context, rememberMe) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "lbl_remember_me".tr,
                  value: rememberMe,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<SignUpBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_up".tr);
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
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
    }).catchError(
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
        print( googleUser.displayName);
        print( googleUser.email);
        print( googleUser.photoUrl);
        print( googleUser.id);

        




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

import 'bloc/onboarding_screen_three_bloc.dart';
import 'models/onboarding_screen_three_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';

class OnboardingScreenThreeScreen extends StatelessWidget {
  const OnboardingScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenThreeBloc>(
      create: (context) => OnboardingScreenThreeBloc(OnboardingScreenThreeState(
        onboardingScreenThreeModelObj: OnboardingScreenThreeModel(),
      ))
        ..add(OnboardingScreenThreeInitialEvent()),
      child: OnboardingScreenThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenThreeBloc, OnboardingScreenThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 32.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_need".tr,
                      style: CustomTextStyles.headlineMediumOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_medical_help".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_let_s_start_discuss".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 68.v),
                  _buildOnboardingStack(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOnboardingStack(BuildContext context) {
    return Container(
      height: 268.v,
      width: double.maxFinite,
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRm373batch719a,
            height: 268.v,
            width: 248.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 37.h),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 99.v),
              child: SizedBox(
                width: 38.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 99.v),
              child: SizedBox(
                width: 150.h,
                child: Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

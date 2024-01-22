import 'bloc/onboarding_screen_two_bloc.dart';
import 'models/onboarding_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';

class OnboardingScreenTwoScreen extends StatelessWidget {
  const OnboardingScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenTwoBloc>(
      create: (context) => OnboardingScreenTwoBloc(OnboardingScreenTwoState(
        onboardingScreenTwoModelObj: OnboardingScreenTwoModel(),
      ))
        ..add(OnboardingScreenTwoInitialEvent()),
      child: OnboardingScreenTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenTwoBloc, OnboardingScreenTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "msg_order_medicine_online".tr,
                    style: CustomTextStyles.headlineMediumPurpleA100,
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 213.h,
                    child: Text(
                      "msg_order_your_medicine".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup17,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          _buildDeliveryStack(context),
                          SizedBox(height: 62.v),
                          CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            alignment: Alignment.center,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRightPurpleA200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDeliveryStack(BuildContext context) {
    return SizedBox(
      height: 257.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Opacity(
            opacity: 0.68,
            child: CustomImageView(
              imagePath: ImageConstant.imgDotWhite1,
              height: 224.v,
              width: 217.h,
              alignment: Alignment.bottomLeft,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCourierDelivering,
            height: 244.v,
            width: 294.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}

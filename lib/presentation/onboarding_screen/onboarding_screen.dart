import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child:Scaffold(
      body: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup16,
            fit: BoxFit.cover,
            width: SizeUtils.width,
            height: SizeUtils.height,
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 50.v),
                Text(
                  "msg_medicine_reminder".tr,
                  style: CustomTextStyles.headlineMediumOnPrimary,
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  // width: 205.h,
                  child: Text(
                    "msg_set_up_a_reminder".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 150.v),
                _buildReminderStack(context),
                Spacer(),
                CustomIconButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        child: OnboardingScreenTwoScreen(),
                      ),
                    );
                  },
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(height: 15.v),
              ],
            ),
          ),
        ],
      ),)
    );
  }

  /// Section Widget
  Widget _buildReminderStack(BuildContext context) {
    return SizedBox(
      height: 292.v,
      width: 321.h,
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
            imagePath: ImageConstant.img39594161,
            height: 279.v,
            width: 266.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}

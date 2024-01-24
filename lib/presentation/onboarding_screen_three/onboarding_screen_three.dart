import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_four/onboarding_screen_four.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';

class OnboardingScreenThree extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup17,
                  fit: BoxFit.cover,
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.v),
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
                    SizedBox(height: 150.v),
                    _buildDeliveryStack(context),
                    SizedBox(height: 62.v),
                    Spacer(),
                    CustomIconButton(
                      onTap: () {
                         Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        child: OnboardingScreenfour(),
                      ),
                    );
                      },
                      height: 54.adaptSize,
                      width: 54.adaptSize,
                      padding: EdgeInsets.all(18.h),
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRightPurpleA200,
                        color: Color.fromRGBO(198, 79, 249, 1),
                      ),
                    ),
                    SizedBox(height: 15.v),
                  ],
                ),
              ],
            ),
          ),
      )
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

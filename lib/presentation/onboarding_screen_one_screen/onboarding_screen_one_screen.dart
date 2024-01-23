import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen/onboarding_screen.dart';

import 'bloc/onboarding_screen_one_bloc.dart';
import 'models/onboarding_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_icon_button.dart';

class OnboardingScreenOneScreen extends StatelessWidget {
  const OnboardingScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenOneBloc>(
      create: (context) => OnboardingScreenOneBloc(OnboardingScreenOneState(
        onboardingScreenOneModelObj: OnboardingScreenOneModel(),
      ))
        ..add(OnboardingScreenOneInitialEvent()),
      child: OnboardingScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenOneBloc, OnboardingScreenOneState>(
      builder: (context, state) {
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
                  imagePath: ImageConstant.imgGroup15,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                  height: SizeUtils.height,
                  width: SizeUtils.width),
              Column(children: [
                SizedBox(height: 50.v),
                Center(
                  child: Text(
                    "msg_find_your_doctor".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  width: 251.h,
                  child: Text(
                    "msg_find_a_doctor_who".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 150.v),
                _buildDoctorReviews(context),
                Spacer(),
                CustomIconButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        child: OnboardingScreen(),
                      ),
                    );
                  },
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    color: Color.fromRGBO(17, 184, 190, 1),
                  ),
                ),
                SizedBox(height: 15.v),
              ])
            ],
          ))),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return SizedBox(
      height: 254.v,
      width: 348.h,
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
            imagePath: ImageConstant.img38045141,
            height: 241.v,
            width: 321.h,
            fit: BoxFit.fill,
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}

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
        return  Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SafeArea(
                child: Column(
                  children: [
                     SizedBox(height: 50.v),
                    Text(
                      "msg_find_your_doctor".tr,
                      style: theme.textTheme.headlineMedium,
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
                    SizedBox(height: 25.v),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 21.v),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup15,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            _buildDoctorReviews(context),
                            SizedBox(height: 62.v),
                            Padding(
                              padding: EdgeInsets.only(left: 150.h),
                              child: CustomIconButton(
                                onTap: () {
                                 Navigator.pushNamed(context, AppRoutes.onboardingScreenTwoScreen);
                                },
                                height: 54.adaptSize,
                                width: 54.adaptSize,
                                padding: EdgeInsets.all(18.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  color: Color.fromRGBO(17, 184, 190, 1),
                                ),
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
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}

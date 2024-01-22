import 'bloc/splash_screen_one_bloc.dart';
import 'models/splash_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreenOneDialog extends StatelessWidget {
  const SplashScreenOneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenOneBloc>(
      create: (context) => SplashScreenOneBloc(SplashScreenOneState(
        splashScreenOneModelObj: SplashScreenOneModel(),
      ))
        ..add(SplashScreenOneInitialEvent()),
      child: SplashScreenOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder93,
      ),
      child: Container(
        padding: EdgeInsets.all(7.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.circleBorder85,
        ),
        child: Container(
          height: 156.adaptSize,
          width: 156.adaptSize,
          padding: EdgeInsets.all(25.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.circleBorder78,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLogoSpireEDoctors106x106,
            height: 106.adaptSize,
            width: 106.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(
        SplashState(
          splashModelObj: SplashModel(),
        ),
      )..add(
          SplashInitialEvent(),
        ),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
            width: SizeUtils.width,
            height: SizeUtils.height,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              image: DecorationImage(
                  image: AssetImage(ImageConstant.img01SplashScreen),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  _buildSplashScreenRow(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSplashScreenRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 85.v, bottom: 55.v),
            child: SizedBox(
              width: 117.h,
              child: Divider(),
            ),
          ),
          CustomImageView(
              imagePath: ImageConstant.imgLogoSpireEDoctors,
              height: 141.adaptSize,
              width: 141.adaptSize),
          Padding(
            padding: EdgeInsets.only(top: 85.v, bottom: 55.v),
            child: SizedBox(
              width: 117.h,
              child: Divider(),
            ),
          )
        ],
      ),
    );
  }
}

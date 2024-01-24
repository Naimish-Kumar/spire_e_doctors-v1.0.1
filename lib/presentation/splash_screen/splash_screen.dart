import 'package:flutter/services.dart';
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
        return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
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
            ));
      },
    );
  }

  /// Section Widget
  Widget _buildSplashScreenRow(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(10.adaptSize),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.3),
        ),
        child: Container(
          padding: EdgeInsets.all(10.adaptSize),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.4),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.7),
            ),
            child: CustomImageView(
              margin: EdgeInsets.all(20.adaptSize),
              imagePath: 'assets/images/logo.png',
            ),
          ),
        ),
      ),
    );
  }
}

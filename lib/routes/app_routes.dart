import 'package:flutter/material.dart';
import 'package:spire_e_doctors/presentation/splash_screen/splash_screen.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import 'package:spire_e_doctors/presentation/sign_up_screen/sign_up_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';


  static const String signUpScreen = '/sign_up_screen';



  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreenOneScreen: OnboardingScreenOneScreen.builder,
        signUpScreen: SignUpScreen.builder,
        initialRoute: SplashScreen.builder
      };
}

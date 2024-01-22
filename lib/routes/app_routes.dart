import 'package:flutter/material.dart';
import 'package:spire_e_doctors/presentation/splash_screen/splash_screen.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_three_screen/onboarding_screen_three_screen.dart';
import 'package:spire_e_doctors/presentation/sign_up_screen/sign_up_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String onboardingScreenThreeScreen =
      '/onboarding_screen_three_screen';

  static const String signUpScreen = '/sign_up_screen';



  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreenOneScreen: OnboardingScreenOneScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        onboardingScreenTwoScreen: OnboardingScreenTwoScreen.builder,
        onboardingScreenThreeScreen: OnboardingScreenThreeScreen.builder,
        signUpScreen: SignUpScreen.builder,
        initialRoute: SplashScreen.builder
      };
}

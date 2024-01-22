// ignore_for_file: must_be_immutable

part of 'onboarding_screen_three_bloc.dart';

/// Represents the state of OnboardingScreenThree in the application.
class OnboardingScreenThreeState extends Equatable {
  OnboardingScreenThreeState({this.onboardingScreenThreeModelObj});

  OnboardingScreenThreeModel? onboardingScreenThreeModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenThreeModelObj,
      ];
  OnboardingScreenThreeState copyWith(
      {OnboardingScreenThreeModel? onboardingScreenThreeModelObj}) {
    return OnboardingScreenThreeState(
      onboardingScreenThreeModelObj:
          onboardingScreenThreeModelObj ?? this.onboardingScreenThreeModelObj,
    );
  }
}

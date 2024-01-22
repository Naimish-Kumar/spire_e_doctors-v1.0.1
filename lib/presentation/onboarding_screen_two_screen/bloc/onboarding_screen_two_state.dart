// ignore_for_file: must_be_immutable

part of 'onboarding_screen_two_bloc.dart';

/// Represents the state of OnboardingScreenTwo in the application.
class OnboardingScreenTwoState extends Equatable {
  OnboardingScreenTwoState({this.onboardingScreenTwoModelObj});

  OnboardingScreenTwoModel? onboardingScreenTwoModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenTwoModelObj,
      ];
  OnboardingScreenTwoState copyWith(
      {OnboardingScreenTwoModel? onboardingScreenTwoModelObj}) {
    return OnboardingScreenTwoState(
      onboardingScreenTwoModelObj:
          onboardingScreenTwoModelObj ?? this.onboardingScreenTwoModelObj,
    );
  }
}

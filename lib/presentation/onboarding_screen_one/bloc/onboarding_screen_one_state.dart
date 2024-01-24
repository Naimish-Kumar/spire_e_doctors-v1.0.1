// ignore_for_file: must_be_immutable

part of 'onboarding_screen_one_bloc.dart';

/// Represents the state of OnboardingScreenOne in the application.
class OnboardingScreenOneState extends Equatable {
  OnboardingScreenOneState({this.onboardingScreenOneModelObj});

  OnboardingScreenOneModel? onboardingScreenOneModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenOneModelObj,
      ];
  OnboardingScreenOneState copyWith(
      {OnboardingScreenOneModel? onboardingScreenOneModelObj}) {
    return OnboardingScreenOneState(
      onboardingScreenOneModelObj:
          onboardingScreenOneModelObj ?? this.onboardingScreenOneModelObj,
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_four/models/onboarding_screen_three_model.dart';
import '/core/app_export.dart';
part 'onboarding_screen_three_event.dart';
part 'onboarding_screen_three_state.dart';

/// A bloc that manages the state of a OnboardingScreenThree according to the event that is dispatched to it.
class OnboardingScreenThreeBloc
    extends Bloc<OnboardingScreenThreeEvent, OnboardingScreenThreeState> {
  OnboardingScreenThreeBloc(OnboardingScreenThreeState initialState)
      : super(initialState) {
    on<OnboardingScreenThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenThreeInitialEvent event,
    Emitter<OnboardingScreenThreeState> emit,
  ) async {}
}

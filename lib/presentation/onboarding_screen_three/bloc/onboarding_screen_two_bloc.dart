import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_three/models/onboarding_screen_two_model.dart';
import '/core/app_export.dart';
part 'onboarding_screen_two_event.dart';
part 'onboarding_screen_two_state.dart';

/// A bloc that manages the state of a OnboardingScreenTwo according to the event that is dispatched to it.
class OnboardingScreenTwoBloc
    extends Bloc<OnboardingScreenTwoEvent, OnboardingScreenTwoState> {
  OnboardingScreenTwoBloc(OnboardingScreenTwoState initialState)
      : super(initialState) {
    on<OnboardingScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenTwoInitialEvent event,
    Emitter<OnboardingScreenTwoState> emit,
  ) async {}
}

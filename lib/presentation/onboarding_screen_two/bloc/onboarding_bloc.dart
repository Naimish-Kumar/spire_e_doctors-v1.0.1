import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spire_e_doctors/presentation/onboarding_screen_two/models/onboarding_model.dart';
import '/core/app_export.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

/// A bloc that manages the state of a Onboarding according to the event that is dispatched to it.
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(OnboardingState initialState) : super(initialState) {
    on<OnboardingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingInitialEvent event,
    Emitter<OnboardingState> emit,
  ) async {}
}

// ignore_for_file: must_be_immutable

part of 'onboarding_screen_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenThreeEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenThree widget is first created.
class OnboardingScreenThreeInitialEvent extends OnboardingScreenThreeEvent {
  @override
  List<Object?> get props => [];
}

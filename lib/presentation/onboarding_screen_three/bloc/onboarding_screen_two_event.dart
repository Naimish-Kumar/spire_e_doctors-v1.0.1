// ignore_for_file: must_be_immutable

part of 'onboarding_screen_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenTwoEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenTwo widget is first created.
class OnboardingScreenTwoInitialEvent extends OnboardingScreenTwoEvent {
  @override
  List<Object?> get props => [];
}

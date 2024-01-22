// ignore_for_file: must_be_immutable

part of 'onboarding_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenOneEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenOne widget is first created.
class OnboardingScreenOneInitialEvent extends OnboardingScreenOneEvent {
  @override
  List<Object?> get props => [];
}

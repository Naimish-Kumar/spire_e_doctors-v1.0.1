part of 'splash_bloc.dart';


@immutable
abstract class SplashEvent extends Equatable {}

/// Event that is dispatched when the Splash widget is first created.
class SplashInitialEvent extends SplashEvent {
  @override
  List<Object?> get props => [];
}

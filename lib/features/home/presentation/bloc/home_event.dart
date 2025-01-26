part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class FetchEvent extends HomeEvent {
  final MenuList showingChartType;

  FetchEvent({required this.showingChartType});
}

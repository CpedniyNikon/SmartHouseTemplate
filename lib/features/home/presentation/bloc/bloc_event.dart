part of 'bloc_bloc.dart';

@immutable
sealed class HomeEvent {}

class FetchEvent extends HomeEvent {
  final MenuList showingChartType;

  FetchEvent({required this.showingChartType});
}

class NavigateEvent extends HomeEvent {
  final String menuType;

  NavigateEvent({required this.menuType});
}

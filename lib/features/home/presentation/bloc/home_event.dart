part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class PageChangeEvent extends HomeEvent {
  final PageList pageName;

  PageChangeEvent({required this.pageName});
}

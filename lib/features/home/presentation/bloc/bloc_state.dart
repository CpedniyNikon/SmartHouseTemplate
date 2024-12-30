part of 'bloc_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeFetchedState extends HomeState {}

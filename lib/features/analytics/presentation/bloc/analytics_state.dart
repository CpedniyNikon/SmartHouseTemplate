part of 'analytics_bloc.dart';

@immutable
sealed class AnalyticsState {}

final class AnalyticsInitialState extends AnalyticsState {}

final class AnalyticsFetchedState extends AnalyticsState {}

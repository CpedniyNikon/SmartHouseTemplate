part of 'analytics_bloc.dart';

@immutable
sealed class AnalyticsEvent {}

class AnalyticsFetchEvent extends AnalyticsEvent {}

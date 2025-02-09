part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardBlocState {}

final class DashboardBlocStateInitial extends DashboardBlocState {}

final class DashboardBlocStateFetched extends DashboardBlocState{}

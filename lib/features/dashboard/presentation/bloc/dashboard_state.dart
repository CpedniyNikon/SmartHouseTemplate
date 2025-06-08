part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardBlocState {}

final class DashboardBlocStateInitial extends DashboardBlocState {}

final class DashboardBlocStateFetched extends DashboardBlocState {
  final List<Map<String, List<int>>> data;

  DashboardBlocStateFetched(this.data);
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';
import 'package:vikrf_thesis/features/dashboard/domain/repository/dashboard_repository.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardBlocEvent, DashboardBlocState> {
  final AuthRepository _authRepository;
  final DashboardRepository _dashboardRepository;

  DashboardBloc(this._authRepository, this._dashboardRepository)
      : super(DashboardBlocStateInitial()) {
    on<DashboardBlocEventFetch>(_onFetch);
  }

  Future<void> _onFetch(
      DashboardBlocEventFetch event, Emitter<DashboardBlocState> emit) async {
    debugPrint("_onFetch");
    final token = await _authRepository.getToken();
    MetricEntity data = await _dashboardRepository.fetch(uuid: token);
    emit(DashboardBlocStateFetched(data.data));
  }
}

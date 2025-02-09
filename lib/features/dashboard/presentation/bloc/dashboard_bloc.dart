import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardBlocEvent, DashboardBlocState> {
  DashboardBloc() : super(DashboardBlocStateInitial()) {
    on<DashboardBlocEventFetch>(_onFetch);
  }

  Future<void> _onFetch(DashboardBlocEventFetch event, Emitter<DashboardBlocState> emit) async {
    emit(DashboardBlocStateFetched());
  }
}

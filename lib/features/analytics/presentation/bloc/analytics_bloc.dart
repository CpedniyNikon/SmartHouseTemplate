import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'analytics_event.dart';

part 'analytics_state.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  AnalyticsBloc() : super(AnalyticsInitialState()) {
    on<AnalyticsFetchEvent>(_onFetch);
  }

  Future<void> _onFetch(AnalyticsFetchEvent event, Emitter<AnalyticsState> emit) async {
    emit(AnalyticsFetchedState());
  }
}

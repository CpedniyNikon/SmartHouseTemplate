import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_state.dart';

part 'settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitialState()) {
    add(FetchEvent());
  }

  void _onFetch(FetchEvent event, Emitter<SettingsState> emit) {
    emit(SettingsFetchedState());
  }
}

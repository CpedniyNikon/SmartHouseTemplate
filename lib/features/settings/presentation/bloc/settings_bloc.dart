import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_state.dart';

part 'settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitialState()) {
    on<FetchEvent>(_onFetch);
  }

  Future<void> _onFetch(FetchEvent event, Emitter<SettingsState> emit) async {
    emit(SettingsFetchedState());
  }
}

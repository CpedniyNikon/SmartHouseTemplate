import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsBlocEvent, SettingsBlocState> {
  SettingsBloc() : super(const SettingsBlocState(isDark: false)) {
    on<SettingsBlocEventSetInitialTheme>(_onSetInitialThemeEvent);
    on<SettingsBlocEventChangeTheme>(_onChangeThemeEvent);
    add(SettingsBlocEventSetInitialTheme());
  }

  Future<void> _onSetInitialThemeEvent(
      SettingsBlocEventSetInitialTheme event, Emitter<SettingsBlocState> emit) async {
    bool hasThemeDark = await isDark();
    emit(SettingsBlocState(isDark: hasThemeDark));
  }

  Future<void> _onChangeThemeEvent(
      SettingsBlocEventChangeTheme event, Emitter<SettingsBlocState> emit) async {
    bool hasThemeDark = await isDark();

    emit(SettingsBlocState(isDark: !hasThemeDark));
    setTheme(!hasThemeDark);
  }

  Future<bool> isDark() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    return sharedPreferences.getBool('isDark') ?? false;
  }

  Future<void> setTheme(bool isDark) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.setBool('isDark', isDark);
  }
}

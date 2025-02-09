part of 'settings_bloc.dart';

@immutable
sealed class SettingsBlocEvent {}

class SettingsBlocEventSetInitialTheme extends SettingsBlocEvent {}

class SettingsBlocEventChangeTheme extends SettingsBlocEvent {}

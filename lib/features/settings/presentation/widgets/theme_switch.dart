import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/settings/presentation/bloc/settings_bloc.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsBlocState>(
        builder: (BuildContext context, SettingsBlocState state) => Row(
              children: [
                Text(
                  'Тема: ${state.isDark == true ? "Темная" : "Светлая"}',
                ),
                CupertinoSwitch(
                  value: state.isDark,
                  onChanged: (value) {
                    context
                        .read<SettingsBloc>()
                        .add(SettingsBlocEventChangeTheme());
                    setState(() {});
                  },
                ),
              ],
            ));
  }
}

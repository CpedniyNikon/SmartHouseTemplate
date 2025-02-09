import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Умный дом.',
      ),
      actions: [
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Theme.of(context).textTheme.headlineLarge!.color!,
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthBlocEventLogOut());
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;

  const HomeAppbar({super.key, required this.automaticallyImplyLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: Colors.black,
      title: const Text(
        'Всероссийский инженерный конкурс: Умный дом.',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          color: Colors.white,
        ),
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
                  icon: const Icon(
                    Icons.account_box,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().add(const LogOutEvent());
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

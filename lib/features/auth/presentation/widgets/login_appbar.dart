import 'package:flutter/material.dart';

class LoginAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'Istok-Smart',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      actions: const [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

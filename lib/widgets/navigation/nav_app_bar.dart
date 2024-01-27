import 'package:flutter/material.dart';

class NavAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: const Color.fromARGB(255, 32, 11, 5),
      title: Row(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo-text.png',
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/logo-nameless.png',
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[200],
    );
  }
}

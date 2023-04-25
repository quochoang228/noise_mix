import 'package:flutter/material.dart';

class AppBarEmpty extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size(0.0, 0.0);
}
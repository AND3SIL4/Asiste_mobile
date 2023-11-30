import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(500)),
      child: Image.network(
        'http://github.com/and3sil4.png',
        height: size,
        width: size,
      ),
    );
  }
}

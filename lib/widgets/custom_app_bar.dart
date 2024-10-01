import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: const Icon(Icons.search),
    );
  }
}

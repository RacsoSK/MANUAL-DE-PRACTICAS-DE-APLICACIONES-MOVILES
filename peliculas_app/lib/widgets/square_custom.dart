import 'package:flutter/material.dart';

class SquareCustom extends StatelessWidget {

  final String imagePath;

  const SquareCustom({
    super.key,
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,
      ),
      height: 60,
      child: Image.asset(imagePath),
    );
  }
}
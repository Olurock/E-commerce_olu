import 'package:flutter/material.dart';
import 'constants.dart';

class Headings extends StatelessWidget {
  final String left;
  final String right;
  const Headings({super.key, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              left,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Text(
              right,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: kprimaryBlue,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

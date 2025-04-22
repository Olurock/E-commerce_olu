import 'package:flutter/material.dart';
import 'package:lafyuu/constants.dart';

class BackCard extends StatelessWidget {
  final double borderRadius;
  final Widget child;
  final int flex;
  const BackCard(
      {super.key,
      required this.borderRadius,
      required this.child,
      this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kGrey)),
            child: child),
      ),
    );
  }
}

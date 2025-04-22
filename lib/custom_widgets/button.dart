import 'package:flutter/material.dart';
import 'package:lafyuu/constants.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function() onpressed;
  final Color? textColor;
  final Color? backgroundColor;

  const MyButton({
    super.key,
    required this.text,
    required this.onpressed,
    this.textColor,
    this.backgroundColor = kprimaryBlue,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

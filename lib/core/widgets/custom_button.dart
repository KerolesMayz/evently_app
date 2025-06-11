import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.onClick, this.backGroundColor});

  final String text;
  final VoidCallback? onClick;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(backgroundColor: backGroundColor),
        child: Text(text));
  }
}

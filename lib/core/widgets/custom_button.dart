import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onClick});

  final String text;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onClick, child: Text(text));
  }
}

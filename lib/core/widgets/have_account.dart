import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount(
      {super.key,
      required this.question,
      required this.action,
      this.onActionClick});

  final String question;
  final String action;
  final VoidCallback? onActionClick;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        TextButton(onPressed: onActionClick, child: Text(action))
      ],
    );
  }
}

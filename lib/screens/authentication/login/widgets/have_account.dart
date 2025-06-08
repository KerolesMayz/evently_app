import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t Have Account ? ',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        TextButton(onPressed: () {}, child: const Text('Create Account'))
      ],
    );
  }
}

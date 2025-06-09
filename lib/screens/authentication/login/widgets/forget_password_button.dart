import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          alignment: Alignment.centerRight,
        ),
        child: const Text('Forget Password ?'));
  }
}

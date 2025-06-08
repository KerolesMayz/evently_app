import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.labelText,
      this.obscureText = false,
      this.onClick});

  final Icon? prefixIcon;
  Icon? suffixIcon;
  final String? hintText;
  final String? labelText;
  bool obscureText;
  final VoidCallback? onClick;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  onPressed: widget.onClick,
                  icon: widget.obscureText
                      ? widget.suffixIcon!
                      : const Icon(Icons.visibility))
              : null,
          hintText: widget.hintText,
          labelText: widget.labelText),
    );
  }
}

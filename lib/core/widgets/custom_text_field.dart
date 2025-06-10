import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.labelText,
      this.obscureText = false,
      this.onClick,
      this.textInputType,
      this.maxLines = 1});

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final VoidCallback? onClick;
  final TextInputType? textInputType;
  final int maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.displayMedium,
      obscureText: widget.obscureText,
      keyboardType: TextInputType.text,
      cursorColor: ColorsManager.blue,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  onPressed: widget.onClick, icon: widget.suffixIcon!)
              : null,
          hintText: widget.hintText,
          labelText: widget.labelText),
    );
  }
}

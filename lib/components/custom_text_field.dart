import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.onTap,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
  });
  final String? hintText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText ?? '',
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(),
      ),
    );
  }
}

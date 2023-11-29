import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.isTextHidden,
    required this.prefixIcon,
    this.sufixIcon,
    required this.helperText,
  });

  final String labelText;
  final bool isTextHidden;
  final Widget prefixIcon;
  final Widget? sufixIcon;
  final String helperText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isTextHidden,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        floatingLabelStyle: const TextStyle(color: Colors.green),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        helperText: helperText,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}

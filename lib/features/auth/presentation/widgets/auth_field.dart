import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final bool isSecure;

  const AuthField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.isSecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(hintText: hintText),
      obscureText: isSecure,
      validator: (value) {
        final unWrapedValue = value ?? "";
        if (unWrapedValue.isEmpty) {
          return "$hintText is missing";
        }

        return null;
      },
    );
  }
}

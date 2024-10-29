import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield(
      {super.key,
      this.controller,
      this.labelText,
      this.autocorrect,
      this.enableSuggestions,
      this.obscureText,
      this.keyboardType,
      this.prefixIcon});

  final TextEditingController? controller;
  final String? labelText;
  final bool? autocorrect;
  final bool? enableSuggestions;
  final bool? obscureText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      autocorrect: autocorrect ?? true,
      enableSuggestions: enableSuggestions ?? true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        fillColor: Colors.grey[200],
        filled: true,
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: Colors.grey,
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: labelText,
      ),
    );
  }
}

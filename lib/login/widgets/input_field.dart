import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.controller,
    required this.isPassword,
    required this.labelTxt,
    required this.icon,
    super.key,
  });

  final TextEditingController controller;
  final bool isPassword;
  final String labelTxt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.5),
        ),
        enabledBorder: const OutlineInputBorder(),
        prefixIcon: Icon(icon, color: Colors.black),
        filled: true,
        fillColor: Colors.black.withOpacity(0.2),
        labelText: labelTxt,
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}

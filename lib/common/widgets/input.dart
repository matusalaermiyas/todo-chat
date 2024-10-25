import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final TextEditingController inputController;
  final IconData prefixIcon;
  final String hintText;
  final TextInputType inputType;

  const AppInput(
      {required this.inputController,
      required this.prefixIcon,
      required this.hintText,
      this.inputType = TextInputType.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: inputType,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          hintText: hintText,
          border: const UnderlineInputBorder(),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.pink)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          )),
    );
  }
}

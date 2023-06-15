import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final Icon? suffixIcon;

  const TextInput({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    this.suffixIcon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: TextField(
        controller: textEditingController,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            border: inputBorder,
            focusedBorder: inputBorder,
            enabledBorder: inputBorder,
            // filled: true,

            contentPadding: const EdgeInsets.all(8)),
        keyboardType: textInputType,
        obscureText: isPass,
      ),
    );
  }
}

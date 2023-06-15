import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;

  const CustomizedButton({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                buttonText!,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 8,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}

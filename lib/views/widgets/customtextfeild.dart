import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    required this.keyboardType,
    this.obscure = false,
    required this.hintText,
    required this.iconData,
  });

  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final bool obscure;
  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          border: InputBorder.none,
          icon: Icon(
            iconData,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}

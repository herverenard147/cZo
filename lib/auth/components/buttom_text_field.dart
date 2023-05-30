import 'package:flutter/material.dart';
import 'package:test/constants/color.dart';

class ButtomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?) validator;
  final String? Function(String?) onSaved;
  const ButtomTextField(
      {super.key,
      required this.controller,
      required this.hintext,
      this.keyboardType,
      this.obscureText = false,
      required this.validator,
      required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textbox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        autofocus: false,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: hintext,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}

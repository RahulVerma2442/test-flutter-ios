import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // const TextFieldWidget({ Key? key }) : super(key: key);

  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;

  TextFieldWidget({
    required this.hintText,
    required this.prefixIconData,
    required this.suffixIconData,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: null,
      obscureText: obscureText,
      cursorColor: const Color(0xffe16259),
      decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Icon(
            prefixIconData,
            size: 18,
            color: const Color(0xffe16259),
          ),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffe16259)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffe16259)),
          ),
          labelStyle: const TextStyle(color: Color(0xffe16259)),
          suffixIcon: Icon(
            suffixIconData,
            size: 18,
            color: const Color(0xffe16259),
          )),
    );
  }
}





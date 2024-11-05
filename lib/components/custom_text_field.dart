import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
  });
  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.blue,
      decoration: InputDecoration(
          hintText: hintText, focusedBorder: border(), border: border()),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.circular(12));
  }
}

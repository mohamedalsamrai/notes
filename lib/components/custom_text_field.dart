import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onSave,
  });
  final String hintText;
  final int maxLine;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is empty";
        } else {
          return null;
        }
      },
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

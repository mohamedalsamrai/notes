import 'package:flutter/material.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
        ),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "Save",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
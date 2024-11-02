import 'package:flutter/material.dart';

void main() {
  runApp(const Note());
}

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.black,
          surfaceTintColor: const Color(0xffffffff),
          elevation: 2,
          backgroundColor: const Color(0xffffffff),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[400],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Title",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: "Poppins"),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline,
                      size: 30,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "detail any thing you can write:my meeting start at 9:00 AM  ",
              style: TextStyle(
                  color: Color.fromARGB(190, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: "Poppins"),
            ),
            const SizedBox(
              height: 14,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "2004 Oct",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: "Poppins"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes/pages/edit_note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard(
      {super.key,
      required this.title,
      required this.detail,
      required this.date});
  final String title;
  final String detail;
  final String date;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNote(),
            ));
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
        color: Colors.blue[400],
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
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
              Text(
                detail,
                style: TextStyle(
                    color: Color.fromARGB(190, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  date,
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
      ),
    );
  }
}

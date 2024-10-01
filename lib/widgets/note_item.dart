import 'package:flutter/material.dart';
import 'package:notes_app/screens/edit_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double height = size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditScreen.editScreenId);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
            color: const Color(0xffFBE846),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter tips",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                // Set the color directly here
              ),
              subtitle: Text(
                "build your career with me",
                style: TextStyle(
                    color: Colors.black
                        .withOpacity(0.4)), // Set the color for the subtitle
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                "May 21 , 2022",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

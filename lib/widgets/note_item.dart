import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/edit_screen.dart';

class NoteItem extends StatelessWidget {
  final NoteModel noteModel;
  const NoteItem({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double height = size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditScreen.editScreenId,
            arguments: noteModel);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                // Set the color directly here
              ),
              subtitle: Text(
                noteModel.subTitle,
                style: TextStyle(
                    color: Colors.black
                        .withOpacity(0.4)), // Set the color for the subtitle
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<AllNoteCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                noteModel.date,
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

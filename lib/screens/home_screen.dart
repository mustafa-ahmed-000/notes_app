import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff2D2D2D),
          title: const Text('Notes App'),
          actions: const [CustomAppBar()],
        ),
        body: const NoteScreenBody()
        // No need to set backgroundColor here. Let the theme control it.
        );
  }
}

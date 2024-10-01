import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NoteScreenBody extends StatelessWidget {
  const NoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesListView();
  }
}

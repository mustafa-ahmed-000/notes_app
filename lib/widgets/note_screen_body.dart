import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NoteScreenBody extends StatelessWidget {
  const NoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return NoteItem();
        });
  }
}

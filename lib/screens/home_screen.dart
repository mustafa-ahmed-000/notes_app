import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_screen_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2D2D2D),
          title: Text('Notes App'),
          actions: [CustomAppBar()],
        ),
        body: NoteScreenBody()
        // No need to set backgroundColor here. Let the theme control it.
        );
  }
}

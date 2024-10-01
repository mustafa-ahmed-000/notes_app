import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_Icon.dart';
import 'package:notes_app/widgets/edit_screen_body.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});
  static const editScreenId = "EditScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2D2D2D),
          title: const Text('Edit Note'),
          actions: const [
            CustomAppBarIcon(
              icon: Icons.check,
            )
          ],
        ),
        body: EditScreenBody());
  }
}

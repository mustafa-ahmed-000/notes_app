import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_screen_body.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});
  static const editScreenId = "EditScreen"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditScreenBody());
  }
}

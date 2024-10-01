import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: "title",
          onChanged: (onChanged) {},
          hintTextColor: kPrimaryColor,
        ),
        CustomTextField(
          hintText: "title",
          onChanged: (onChanged) {},
          hintTextColor: kPrimaryColor,
        ),
      ],
    );
  }
}

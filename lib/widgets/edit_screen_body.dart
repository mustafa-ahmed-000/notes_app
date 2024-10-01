import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditScreenBody extends StatelessWidget {
  const EditScreenBody({super.key});

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
          hintText: "Content",
          maxLines: 5,
          onChanged: (onChanged) {},
          hintTextColor: kPrimaryColor,
        ),
      ],
    );
  }
}

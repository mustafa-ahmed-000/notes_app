import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Added SingleChildScrollView
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context)
              .viewInsets
              .bottom, // Adjust for keyboard height
        ),
        child: Column(
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
            CustomButton(
              text: "Add",
              onTap: () {},
              buttonColor: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

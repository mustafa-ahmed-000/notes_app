import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/note_cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});
  static const editScreenId = "EditScreen";

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    NoteModel myNoteModel =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    String? title, subTitle;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2D2D2D),
          title: const Text('Edit Note'),
          actions: [
            CustomAppBarIcon(
              onTap: () {
                myNoteModel.title = title ?? myNoteModel.title;
                myNoteModel.subTitle = subTitle ?? myNoteModel.subTitle;
                myNoteModel.save();
                BlocProvider.of<AllNoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,
            )
          ],
        ),
        body: Column(
          children: [
            CustomTextField(
              hintText: "title",
              initialValue: myNoteModel.title,
              onChanged: (value) {
                title = value;
              },
              hintTextColor: kPrimaryColor,
            ),
            CustomTextField(
              hintText: myNoteModel.subTitle,
              initialValue: myNoteModel.subTitle,
              maxLines: 5,
              onChanged: (value) {
                subTitle = value;
              },
              hintTextColor: kPrimaryColor,
            ),
          ],
        ));
  }
}

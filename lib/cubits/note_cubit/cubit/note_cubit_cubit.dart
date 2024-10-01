import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_cubit_state.dart';

class AllNoteCubit extends Cubit<NoteCubitState> {
  AllNoteCubit() : super(NoteCubitInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(NoteCubitSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NoteCubitFailure(errMessage: e.toString()));
    }
  }
}

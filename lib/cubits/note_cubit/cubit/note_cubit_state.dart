part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitSuccess extends NoteCubitState {
 final List<NoteModel> notes;

  NoteCubitSuccess({required this.notes}); 

}

final class NoteCubitFailure extends NoteCubitState {
  final String errMessage;
  NoteCubitFailure({required this.errMessage});
}

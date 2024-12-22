part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesCubitInitial extends NotesState {}
final class NotesCubitLoading extends NotesState {}
final class NotesCubitSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesCubitSuccess( this.notes);
}


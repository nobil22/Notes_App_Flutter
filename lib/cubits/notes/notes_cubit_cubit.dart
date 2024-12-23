import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());
   List<NoteModel>? notes;
  FetchAllNotes(){
 var notesBox= Hive.box<NoteModel>(kNotesBox);
  notes=notesBox.values.toList();
  emit(NotesCubitSuccess());
  }
}

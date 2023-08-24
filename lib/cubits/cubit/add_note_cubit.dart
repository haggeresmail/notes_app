import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
      // TODO
    }
  }
}

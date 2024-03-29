import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes ;
  fetchAllNotes()async
  {

   
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      notes =notesbox.values.toList();
      emit(NoteSuccess());
    
     
  }
}

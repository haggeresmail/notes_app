import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notescubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/custom_appbar.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          custom_appbar(
            onPressed: () {
              widget.note.title = title!;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();

              Navigator.pop(context);
            },
            title: "Edit Notes",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: widget.note.subtitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}

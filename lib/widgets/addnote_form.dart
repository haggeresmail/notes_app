import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/colorlistview.dart';
import 'package:noteapp/widgets/custom_buttonsheet.dart';
import 'package:noteapp/widgets/custom_textfield.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: "content",
            onSaved: (data) {
              subtitle = data;
            },
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorListView(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNoteLoading ? true : false,
                text: 'Add',
                onTap: () {
                  validator(context);
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void validator(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      DateTime now = DateTime.now();
      String formattedDate = DateFormat().add_yMd().format(now);
      var notemodel = NoteModel(
          title: title!,
          subtitle: subtitle!,
          date: formattedDate,
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}


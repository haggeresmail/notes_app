import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_note_bottomsheet.dart';

import 'package:noteapp/widgets/custom_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const CustomBody(),
    );
  }
}



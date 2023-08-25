import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/cubits/notescubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/editnoteview.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final List<Color> colors = const [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
  ];
  static int i = 0;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    i++;
    return i < 200
        ? GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const EditNoteView();
              }));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 24, bottom: 24),
              decoration: BoxDecoration(
                color: Color(note.color),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      note.title,
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        note.subtitle,
                        style: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          note.delete();
                        },
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.black,
                          size: 24,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      note.date,
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const EditNoteView();
              }));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 24, bottom: 24),
              decoration: BoxDecoration(
                color: colors[i],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      "Flutter tips",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "build your career with hagger esmail",
                        style: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.black,
                          size: 24,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "4 june ,2001",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

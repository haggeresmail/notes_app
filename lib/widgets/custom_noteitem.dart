import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/editnoteview.dart';
import 'package:noteapp/widgets/editviewbody.dart';

class NoteItem extends StatelessWidget {
  const NoteItem();

  final List<Color> colors = const [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.lightGreen,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.lightGreen,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.lightGreen,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.lightGreen,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.lightGreen,
    Colors.black,
    Colors.pink,
  ];
  static int i = 0;
  @override
  Widget build(BuildContext context) {
    //   i++; i < colors.length
    return GestureDetector(
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

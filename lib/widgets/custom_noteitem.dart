import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    i++;
    return i < colors.length
        ? Container(
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
          )
        : Container(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            decoration: BoxDecoration(
              color: colors[1],
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "are you sure you want to delete?",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text("yes",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text(
                                    "No",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              );
                            });
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
                    "4 june ,2001",
                    style: TextStyle(color: Colors.black38, fontSize: 16),
                  ),
                ),
              ],
            ));
  }
}

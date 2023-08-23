import 'dart:math';

import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_noteitem.dart';

class NoteItemListView extends StatelessWidget {
  const NoteItemListView({
    super.key,
  });
 

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
 

}

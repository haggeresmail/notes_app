import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appbar.dart';
import 'package:noteapp/widgets/noteItem_listview.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          custom_appbar(),
          Expanded(child: NoteItemListView()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_searchicon.dart';

class custom_appbar extends StatelessWidget {
  const custom_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        Custom_Search_Icon(),
      ],
    );
  }
}



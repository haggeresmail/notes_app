import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_searchicon.dart';

class custom_appbar extends StatelessWidget {
  const custom_appbar({
    super.key,
    required this.title, required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_searchicon.dart';

class custom_appbar extends StatelessWidget {
  const custom_appbar({
    super.key,
    required this.title, required this.icon, this.onPressed,
  });
  final String title;
  final IconData icon;
  final Function()? onPressed;
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
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}

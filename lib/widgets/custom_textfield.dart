import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hintText, this.maxLines = 1});
  final String? hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimarycolor,
      maxLines: maxLines,
      // obscureText: obscureText!,

      // onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: KPrimarycolor,
        ),
        enabledBorder: buildborder(),
        border: buildborder(),
        focusedBorder: buildborder(KPrimarycolor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}

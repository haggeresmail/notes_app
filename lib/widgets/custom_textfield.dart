import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomTextField extends StatelessWidget {
 const  CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String? hintText;
  final int maxLines;
   final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'field is required';
        }
        else{
          return null;
        }
      },
      cursorColor: kPrimarycolor,
      maxLines: maxLines,
      // obscureText: obscureText!,

      // onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimarycolor,
        ),
        enabledBorder: buildborder(),
        border: buildborder(),
        focusedBorder: buildborder(kPrimarycolor),
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

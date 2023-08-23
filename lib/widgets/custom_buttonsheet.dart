import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text});
  String text;
  // VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: KPrimarycolor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

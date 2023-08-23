import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appbar.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: "Title",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: "content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}

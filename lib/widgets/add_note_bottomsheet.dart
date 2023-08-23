import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_buttonsheet.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
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
            CustomButton(text: 'Add'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

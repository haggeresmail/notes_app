import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appbar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          custom_appbar(title: 'Edit Notes',icon: Icons.check,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:noteapp/widgets/custom_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: custom_body(),
    );
  }
}

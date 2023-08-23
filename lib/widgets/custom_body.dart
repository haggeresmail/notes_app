import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appbar.dart';

class custom_body extends StatelessWidget {
  const custom_body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          custom_appbar(),
        ],
      ),
    );
  }
}

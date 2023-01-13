import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//Answer({super.key});

  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.red,
          backgroundColor: Colors.yellow,
        ),
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}

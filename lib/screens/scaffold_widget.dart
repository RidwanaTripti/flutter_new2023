import 'package:first_hw/screens/text_widget.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Text(
        "Here is Scaffold Widget !!!",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
    );
  }
}

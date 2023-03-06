import 'package:flutter/material.dart';

class Appbar_Widget extends StatelessWidget {
  const Appbar_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 31, 9, 9),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Color.fromARGB(255, 68, 136, 192)],
            ),
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}

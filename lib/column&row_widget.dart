import 'package:flutter/material.dart';

class ColumnRow_widget extends StatelessWidget {
  const ColumnRow_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Column and Row",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 10,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              height: 300.0,
              width: 600.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border,
                    size: 100,
                    color: Colors.teal[900],
                  ),
                  Icon(Icons.square, size: 100, color: Colors.teal[900]),
                  Icon(Icons.circle, size: 100, color: Colors.teal[900]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

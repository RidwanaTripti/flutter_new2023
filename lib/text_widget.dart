import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: Column(
          children: [
            Text(
              "Hellow There !!!....",
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800),
            ),
            Text.rich(
              TextSpan(
                  text: "T",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "his is ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal),
                    ),
                    TextSpan(
                        text: " Tri",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontStyle: FontStyle.normal)),
                    TextSpan(),
                    TextSpan(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

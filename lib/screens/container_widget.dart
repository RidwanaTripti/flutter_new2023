import 'package:flutter/material.dart';

class Container_Widget extends StatelessWidget {
  const Container_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("Hi Container"),
                  height: 100.0,
                  width: 100.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2.0)),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                        vertical: BorderSide(
                          width: 10.0,
                          color: Colors.red,
                        ),
                        horizontal:
                            BorderSide(width: 10.0, color: Colors.green)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(width: 20.0, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(50.0, 10.0),
                        right: Radius.circular(20.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.zero),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

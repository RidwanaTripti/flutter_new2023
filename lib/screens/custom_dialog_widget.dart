import 'package:first_hw/alert_box/error_alert.dart';
import 'package:first_hw/alert_box/infor_alert.dart';
import 'package:first_hw/alert_box/success_alert.dart';
import 'package:first_hw/alert_box/warning_alert.dart';

import 'appbar_widget.dart';
import 'package:flutter/material.dart';

class Custom_Dialog_Widget extends StatelessWidget {
  // const Custom_Dialog_Widget({super.key});
  TextStyle textStyle = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black);
  Size buttonsize = Size(195.0, 50.0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Custom Widget"),
          foregroundColor: Color.fromARGB(255, 31, 9, 9),
          centerTitle: true,
          flexibleSpace: Appbar_Widget(),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              height: 250.0,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Info_ALertBox();
                        },
                      );
                    },
                    child: Text("Info Alert"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: buttonsize,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Warning_ALertBox();
                        },
                      );
                    },
                    child: Text("Warning Alert"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: buttonsize,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: Colors.yellow[900],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Error_ALertBox();
                        },
                      );
                    },
                    child: Text("Error Alert"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: buttonsize,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        backgroundColor: Colors.red[900]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Success_ALertBox();
                        },
                      );
                    },
                    child: Text("Success Alert"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: buttonsize,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        backgroundColor: Colors.green[600]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

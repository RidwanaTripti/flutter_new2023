import 'package:flutter/material.dart';

class Success_ALertBox extends StatelessWidget {
  // const Success_ALertBox({super.key});
  TextStyle textStyle = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green[900]);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.green[200],
      child: SizedBox(
        height: 180.0,
        width: 150.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green[900],
                      ),
                      Text(
                        "Success Alert",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "This is Success Alert",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 30.0),
                Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      minimumSize: Size(100.0, 30.0),
                      foregroundColor: Colors.green[900]),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

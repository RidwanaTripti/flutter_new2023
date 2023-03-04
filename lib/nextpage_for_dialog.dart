import 'package:first_hw/button_widget.dart';
import 'package:flutter/material.dart';

class NextPage_DialogBox extends StatelessWidget {
  // const NextPage_DialogBox({super.key});
  ButtonStyle outlinedBttn = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      minimumSize: Size(100, 80),
      backgroundColor: Color.fromARGB(255, 171, 60, 190),
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 400,
            color: Color.fromARGB(255, 216, 141, 230),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Thanks For Routing..."),
                SizedBox(height: 50.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ButtonWidget();
                    }));
                  },
                  child: Text("Home"),
                  style: outlinedBttn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dialogBox.dart';
import 'appbar_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  // const ButtonWidget({super.key});
  ButtonStyle elevatedStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      minimumSize: Size(200.0, 100),
      backgroundColor: Color.fromARGB(255, 182, 55, 204),
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black));
  TextStyle buttontextStyle =
      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
  TextStyle txtstyle = TextStyle(fontSize: 20.0, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Buttons",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Appbar_Widget(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text.rich(TextSpan(children: [
                  TextSpan(text: "This screen is for ", style: txtstyle),
                  TextSpan(
                    text: "ElevatedButton ",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "widget click the button to show the Alert Box...",
                    style: txtstyle,
                  )
                ])),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return DialogBox_Widget();
                      });
                },
                child: Text(
                  "Click Here",
                  style: buttontextStyle,
                ),
                style: elevatedStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

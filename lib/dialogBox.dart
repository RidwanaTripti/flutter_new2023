import 'nextpage_for_dialog.dart';
import 'package:flutter/material.dart';

class DialogBox_Widget extends StatelessWidget {
  // const DialogBox_Widget({super.key});
  ButtonStyle txtbutton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
    minimumSize: Size(50, 40),
    backgroundColor: Color.fromARGB(255, 182, 55, 204),
    foregroundColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Messages"),
      content: Container(
        height: 200,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit."),
            Text("Touch 'CANCLE' to cancle or 'OK' to route next.."),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NextPage_DialogBox();
                }));
              },
              child: Text("OK"),
              style: txtbutton,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                onLongPress: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("Empty Dialog Box.\nTap anyWhere"),
                        );
                      });
                },
                child: Text("CANCLE"),
                style: txtbutton),
          ],
        ),
      ],
    );
  }
}

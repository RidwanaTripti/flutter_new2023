import 'screens/button_widget.dart';
import 'screens/column&row_widget.dart';
import 'screens/container_widget.dart';
import 'screens/custom_dialog_widget.dart';
import 'screens/scaffold_widget.dart';
import 'screens/text_widget.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      // home: ScaffoldWidget(),
      // home: TextWidget(),
      // home: Container_Widget(),
      // home: ColumnRow_widget(),
      // home: ButtonWidget(),
      home: Custom_Dialog_Widget(),
    );
  }
}

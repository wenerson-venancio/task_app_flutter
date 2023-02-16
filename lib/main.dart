import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Task_App', home: HomePage());
  }
}

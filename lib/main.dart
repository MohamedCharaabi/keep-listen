import 'package:flutter/material.dart';
import 'package:keep_listen/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xff171617),
        scaffoldBackgroundColor: const Color(0xff171617),
      ),
      home: const Home(),
    );
  }
}

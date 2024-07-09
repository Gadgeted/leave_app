import 'package:flutter/material.dart';
import 'register_page.dart';
import 'leave_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leave Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RegisterPage(),
        '/leave': (context) => LeavePage(),
      },
    );
  }
}

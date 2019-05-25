import 'package:flutter/material.dart';
import './ui/login.dart';
import './ui/register.dart';
import './ui/homepg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/register" :(context) => RegistScreen(),
        "/home" :(context) => HomeScreen()
      },
    );
  }
}

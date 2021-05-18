import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.dark, // system >> for system theme light/dark
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(           // light >> for light theme
        brightness: Brightness.light,   // dark >> for dark theme
        primarySwatch: Colors.green
      ),
      initialRoute: "/home",   // used to define default page
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage()
      },
    );
  }
}
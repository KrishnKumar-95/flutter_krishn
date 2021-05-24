import 'package:flutter/material.dart';
import 'package:flutter_krishn/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.lato().fontFamily ),
      darkTheme: ThemeData(           // light >> for light theme
        brightness: Brightness.light,   // dark >> for dark theme
        primarySwatch: Colors.green
      ),

      // this page will show on opening the app
      initialRoute: "/",   // we can also say default page
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      },
    );
  }
}
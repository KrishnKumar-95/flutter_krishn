import 'package:flutter/material.dart';
import 'package:flutter_krishn/utils/routes.dart';
import 'package:flutter_krishn/widgets/themes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light, // system >> for system theme light/dark
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),   // dark >> for dark theme
      debugShowCheckedModeBanner: false,
      // this page will show on opening the app
      initialRoute: MyRoutes.homeRoute,   // we can also say default page
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      },
    );
  }
}
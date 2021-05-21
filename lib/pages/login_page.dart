import 'package:flutter/material.dart';
import 'package:flutter_krishn/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // using this there will be scrolling option for short devices
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height : 40.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold)
              ,),
            SizedBox(height: 20.0),
            Text("Enter your valid Username or Password to LogIn",
                style: TextStyle(
                     fontWeight : FontWeight.bold)),

            SizedBox(
              height : 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical :16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      )
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20.0
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: Text("LogIn"),
              style: TextButton.styleFrom(minimumSize: Size(100, 40)),
              ),
          ],

        ),
      )
    );
  }
}

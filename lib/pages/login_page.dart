import 'package:flutter/material.dart';

// here is utils folder is imported
import 'package:flutter_krishn/utils/routes.dart';

// stateful widget is used when we want realtime changes in the page
// without changing the page
class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // using this there will be scrolling option for short devices
      child: SingleChildScrollView(
        child: Column(
          children: [
            // we can insert image by giving its address
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height : 40.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold)
              ,),
            SizedBox(height: 20.0),
            // this text will show above the textfield of Username and Password
            Text("Enter your valid Username or Password to LogIn",
                style: TextStyle(
                     fontWeight : FontWeight.bold)),

            SizedBox(
              height : 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical :16.0, horizontal: 32.0),
              child: Column(
                // using children we can use more than one mathods
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      // this text show before enter Username
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),

                    // this used when we want realtime changes in the stateful widget
                    onChanged: (value) {
                      name = value;

                      // this works only in stateful widgets
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    // this hides the password after being true
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

            // this turn a container into button
            InkWell(

              // this is a property that performs an operation on a container
              onTap: () async{
                setState(() {
                  changeButton = true;
                });
                // if we are using await then we have to async mathod
                await Future.delayed(Duration(seconds: 1));
                // this is operation which will perform
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },

              // Animated container is used to create container
              // which will perform animated stuff
              child: AnimatedContainer(
                // this is the duration of animation
                // which will perform when button will be pressed
                duration: Duration(seconds: 1),
                // this is conditional expression
                // when button is pressed changeButton will be true
                // and it takes value 50 otherwise false and it takes 150
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                child: changeButton?Icon(Icons.done_all,color: Colors.white,) : Text(
                  "LogIn",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                // button decoration
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  // shape: changeButton ? BoxShape.circle
                  //     : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton?50:8),

                ),
              ),
            )

            // this is a button

            // ElevatedButton(onPressed: () {
            //   // this operation run after button press
            //   // move to homepage
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
            //   // this is button size name
            // child: Text("LogIn"),
            //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
            //   ),
          ],

        ),
      )
    );
  }
}

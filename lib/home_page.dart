import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int A = 1;  // for integer value
  final double B = 2;  // for float values
  final String name = "Krishn_Kumar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //it is component of material contains many things.
      appBar: AppBar(
        title: Text("flutter_krishn"),
      ),   // this is top blue bar in the app
      body: Center(
        child: Container(
          child: Text("Welcome to My $A st App. I will make $B also and my name is $name"),    // string interpolation
        ),
      ),
      drawer: Drawer(),
    );
  }
}

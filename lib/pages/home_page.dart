import 'package:flutter/material.dart';
import 'package:flutter_krishn/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int A = 1;  // for integer value
  final double B = 2;  // for float values
  final String name = "Krishn_Kumar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(    //it is component of material contains many things.
      appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
        title: Text("flutter_krishn",style: TextStyle(color:Colors.black)),
      ), // this is top blue bar in the app
      drawer: MyDrawer(), // this is placed on AppBar at top left
      body: Center(
        child: Container(
          child: Text("Welcome to My $A st App. I will make $B also and my name is $name"),    // string interpolation
        ),
      ),
    );
  }
}

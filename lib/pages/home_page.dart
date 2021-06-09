import 'package:flutter/material.dart';
import 'package:flutter_krishn/models/catalog.dart';
import 'package:flutter_krishn/widgets/drawer.dart';
import 'package:flutter_krishn/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int A = 1;  // for integer value
  final double B = 2;  // for float values
  final String name = "Krishn_Kumar";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(    //it is component of material contains many things.
      appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
        title: Text("flutter_krishn",style: TextStyle(color:Colors.black)),
      ), // this is top blue bar in the app
      drawer: MyDrawer(), // this is placed on AppBar at top left
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index){
            return ItemWidget(item: dummyList[index],
            );
          }
        ),
      )
    );
  }
}

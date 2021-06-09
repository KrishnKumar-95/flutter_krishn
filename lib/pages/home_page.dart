import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_krishn/models/catalog.dart';
import 'package:flutter_krishn/widgets/drawer.dart';
import 'package:flutter_krishn/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int A = 1;
  final double B = 2;
  final String name = "Krishn_Kumar";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{
    final catalogJson = await rootBundle.loadString("assets/files/data.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
  }

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

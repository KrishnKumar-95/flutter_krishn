import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_krishn/models/catalog.dart';
import 'package:flutter_krishn/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_krishn/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_krishn/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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

  loadData() async {
    // this delays the loading of the data
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        //it is component of material contains many things.
        //appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0.0,
        //   iconTheme: IconThemeData(color: Colors.black),
        //title: Text("flutter_catalog", style: TextStyle(color: Colors.black)),), // this is top blue bar in the app
        // this is placed on AppBar at top left
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  // This will show the rotating animation at the center of the
                  // screen until data is loaded.
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}

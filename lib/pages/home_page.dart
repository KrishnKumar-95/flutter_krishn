import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_krishn/models/catalog.dart';
import 'package:flutter_krishn/widgets/drawer.dart';
// import 'package:flutter_krishn/widgets/item_widget.dart';

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
      //it is component of material contains many things.
      appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0.0,
        //   iconTheme: IconThemeData(color: Colors.black),
        title: Text("flutter_catalog", style: TextStyle(color: Colors.black)),
      ), // this is top blue bar in the app
      // this is placed on AppBar at top left
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // if we want to apply 2 logic then we use && <<AND operator>>
        // if we want only 1 logic run then we use || <<OR operator>>
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16),
          itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  header: Container(
                    child: Text(
                      item.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                  child: Image.network(item.image),
                  footer: Container(
                    child: Text(
                      "\$${item.price.toString()}",
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                )
            );
          },
          itemCount: CatalogModel.items.length,
        )
        /*ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogModel.items[index],
                ),
              )*/
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

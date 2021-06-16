import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_krishn/models/catalog.dart';
// import 'package:flutter_krishn/widgets/drawer.dart';
// import 'package:flutter_krishn/widgets/item_widget.dart';
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
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // to increase size and make it bold
        // "Catalog App".text.xl5.bold.make(),
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            CatalogImage(image: catalog.image),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.lg.make(),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkBluishColor),
                                shape: MaterialStateProperty.all(
                                  // this is for rounded button shape
                                    StadiumBorder())),
                            child: "Buy".text.make())
                      ],
                    ).pOnly(right: 8.0)
                  ],
                ))
          ],
          // padding horizontal & vertical <<.py16()>>
        )).white.rounded.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key, @required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
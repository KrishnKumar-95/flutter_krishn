import 'package:flutter/material.dart';
import 'package:flutter_krishn/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  // we used @required because it is required for this
  const ItemWidget({Key key, @required this.item}) :
      // we used assert here because it shouldn't be null
      assert(item != null), super(key: key);
  @override
  Widget build(BuildContext context) {
    // Card is elevated widget on the Screen
    // we can also remove its elevation
    // also looks better in no elevation
    return Card(
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          // i used string interpolation to show its name
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green
          ),
        ),
      ),
    );
  }
}

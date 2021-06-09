class CatalogModel{
  // we make it static so we can use it directly using CatalogModel
  static List<Item> items = [
    Item(
      id: 1,
      name: "Iphone 12 pro",
      desc: "Apple iphone 12th Generation",
      price: 999,
      color: "#33505a",
      image: "https://shop.unicornstore.in/uploads/images/medium/e7ac37172c4598e43a56ab993ce6d189.jpeg"
  )];
}




class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
  // if our keys are string then <<string>> keyword will be used
  // otherwise keyword will be <<dynamic>>
  // initialize final variables on the basis of constructor then factory constructor will be used
  factory Item.fromMap(Map<String,dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,
  };

}
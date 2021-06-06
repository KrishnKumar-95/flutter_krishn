class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [Item(
  id: "krishn001",
  name: "Iphone 12 pro",
  desc: "Apple iphone 12th Generation",
  price: 999,
  color: "#33505a",
  image: "https://shop.unicornstore.in/uploads/images/medium/e7ac37172c4598e43a56ab993ce6d189.jpeg"
)];
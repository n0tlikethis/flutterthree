class Item {
  String name;
  int price;
  String desc;
  String image;
  bool wish;

  Item({required this.name, required this.price, required this.desc, required this.image, this.wish = false});
}

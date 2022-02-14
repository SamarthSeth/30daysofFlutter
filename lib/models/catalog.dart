class CatalogModel {
  static final items = [
    Item(
      "XN001",
      "Xenio Neckband",
      "Wireless Neckband With Qcharge upto 30H Playback",
       699,
      "#000000",
      "https://xenio.co.in/wp-content/uploads/2021/11/xn001-feature.png",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

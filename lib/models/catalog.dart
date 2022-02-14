class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

final products = [
  Item(
    id: "XN001",
    name: "Xenio Neckband",
    desc:
        "BEATZ BT90 Wireless Neckband With Qcharge upto 30H Playback Model No XN001 BEATZ",
    price: 699,
    color: "#000000",
    image: "https://xenio.co.in/wp-content/uploads/2021/11/xn001-feature.png",
  )
];

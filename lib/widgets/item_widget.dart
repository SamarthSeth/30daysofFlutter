import 'package:flutter/material.dart';
import 'package:myapp/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  //const ItemWidget({Key? key}) : super(key: key);

  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: (const TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

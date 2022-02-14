import 'package:flutter/material.dart';
import 'package:myapp/models/catalog.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
// const HomePage({Key? key}) : super(key: key);

  final String name = "Samarth";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                //  item: CatalogModel.items[index],
                item: dummyList[index],
              );
            }),
      ),
      drawer: AppDrawer(),
    );
  }
}

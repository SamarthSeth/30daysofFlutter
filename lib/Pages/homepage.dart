import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
// const HomePage({Key? key}) : super(key: key);

  final String name = "Samarth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hey, $name"),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 // const HomePage({Key? key}) : super(key: key);

  final String name = "Samarth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Hey, $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

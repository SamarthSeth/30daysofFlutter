import 'package:flutter/material.dart';
import 'package:myapp/utils/themes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl3.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(context.primaryColor),
                          shape: MaterialStateProperty.all(
                            const StadiumBorder(),
                          )),
                      child: "Add To Cart".text.medium.make())
                  .wh(120, 50)
            ],
          ).p32(),
        ),
        body: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(context.primaryColor)
                        .bold
                        .make(),
                    catalog.desc.text.lg.textStyle(context.captionStyle).make(),
                    10.heightBox,

                    //dummy text
                    "Elitr at lorem ea nonumy nonumy no tempor dolor dolore aliquyam. Et amet kasd eos rebum invidunt amet lorem. Ipsum lorem ut sanctus magna clita sit sed dolores, kasd invidunt accusam consetetur eirmod tempor voluptua sadipscing sadipscing lorem, lorem magna accusam lorem sit elitr ea. Et stet invidunt lorem dolores."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

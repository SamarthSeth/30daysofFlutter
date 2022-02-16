import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

import '../../utils/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}

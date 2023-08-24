import 'package:flutter/cupertino.dart';
import 'package:warenb/models/product.dart';

class RowCategory extends StatelessWidget {
  const RowCategory({super.key, required this.title, required this.items});

  final String title;
  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [_renderItems(items[0])],
          ),
        )
      ],
    );
  }

  _renderItems(Product product) {
    return SizedBox(
      width: 60,
      height: 100,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            product.imagePath,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          product.name,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        Text(
          product.price,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
        ),
      ]),
    );
  }
}

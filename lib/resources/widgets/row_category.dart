import 'package:flutter/cupertino.dart';
import 'package:warenb/models/product.dart';

class RowCategory extends StatelessWidget {
  const RowCategory({super.key, required this.title, required this.items});

  final String title;
  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: items.map((e) => _renderItems(e)).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _renderItems(Product product) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      width: 130,
      height: 230,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          width: 130,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              product.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          product.name,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 6,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            product.price,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
        ),
      ]),
    );
  }
}

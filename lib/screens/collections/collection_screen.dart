import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../resources/widgets/row_category.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height * 2 / 3;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: _height,
            child: Stack(
              children: [
                Positioned(
                    child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: _height * 3 / 4,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )),
                const Positioned(
                    bottom: 190,
                    left: 10,
                    child: Text(
                      'Looks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  bottom: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _getItems().map((e) => _renderItem(e)).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          RowCategory(title: 'Best Seller', items: _getItems()),
          const SizedBox(
            width: 16,
          ),
          RowCategory(title: 'Best Seller', items: _getItems()),
          const SizedBox(
            width: 16,
          ),
          RowCategory(title: 'Best Seller', items: _getItems()),
        ],
      ),
    ));
  }

  List<Product> _getItems() {
    return [
      Product('WarenB ITMC T-shirt', '349.000 VND', 'description',
          'assets/images/2.jpg'),
      Product('WarenB Disconnected T-shirt', '360.000 VND', 'description',
          'assets/images/3.jpg'),
      Product('WarenB Boxy Shirt', '390.000 VND', 'description',
          'assets/images/2.jpg'),
      Product('WarenB Logo Pant', '420.000 VND', 'description',
          'assets/images/3.jpg'),
      Product('WarenB Disconnected T-shirt', '390.000 VND', 'description',
          'assets/images/2.jpg'),
      Product('WarenB Washed Pant', '560.000 VND', 'description',
          'assets/images/3.jpg'),
    ];
  }

  Widget _renderItem(Product product) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 120,
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(product.imagePath, fit: BoxFit.fill),
      ),
    );
  }
}

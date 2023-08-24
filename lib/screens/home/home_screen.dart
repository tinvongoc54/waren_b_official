import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:warenb/models/product.dart';
import 'package:warenb/resources/widgets/row_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'W A R E N B',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(children: [
            _renderSearch(),
            const SizedBox(
              width: 16,
            ),
            _renderCardCollection(),
            const SizedBox(
              width: 16,
            ),
            RowCategory(title: 'Best Seller', items: _getItems()),
            const SizedBox(
              width: 16,
            ),
            RowCategory(title: 'Shirts', items: _getItems()),
            const SizedBox(
              width: 16,
            ),
            RowCategory(title: 'Bottoms', items: _getItems()),
            const SizedBox(
              width: 16,
            ),
            RowCategory(title: 'Accessories', items: _getItems()),
          ]),
        ),
      ),
    );
  }

  _renderSearch() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(style: BorderStyle.solid, color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icon/ic_search.svg',
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search items...',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _renderCardCollection() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.cover,
            ),
          )),
          Positioned(
              bottom: 10,
              child: Text(
                'NEW COLLECTION',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  _getItems() {
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
}

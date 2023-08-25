import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warenb/resources/utils/constants.dart';
import 'package:warenb/screens/collections/collection_screen.dart';
import 'package:warenb/screens/home/home_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentPage = 0;
  final pages = [
    const HomeScreen(),
    const CollectionScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconBottom(
            iconPath: IconPathDefinition.icHome,
            selectedIconPath: IconPathDefinition.icSelectedHome,
            isSelected: _currentPage == 0,
            onPressed: () {
              setState(() {
                _currentPage = 0;
              });
            },
          ),
          IconBottom(
            iconPath: IconPathDefinition.icHeart,
            selectedIconPath: IconPathDefinition.icSelectedHeart,
            isSelected: _currentPage == 1,
            onPressed: () {
              setState(() {
                _currentPage = 1;
              });
            },
          ),
          IconBottom(
            iconPath: IconPathDefinition.icCart,
            selectedIconPath: IconPathDefinition.icSelectedCart,
            isSelected: _currentPage == 2,
            onPressed: () {
              setState(() {
                _currentPage = 2;
              });
            },
          ),
          IconBottom(
            iconPath: IconPathDefinition.icProfile,
            selectedIconPath: IconPathDefinition.icSelectedProfile,
            isSelected: _currentPage == 3,
            onPressed: () {
              setState(() {
                _currentPage = 3;
              });
            },
          ),
        ]),
      ),
    );
  }
}

class IconBottom extends StatelessWidget {
  const IconBottom(
      {super.key,
      required this.iconPath,
      required this.selectedIconPath,
      required this.isSelected,
      required this.onPressed});

  final String iconPath, selectedIconPath;
  final bool isSelected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 50,
        child: SvgPicture.asset(
          isSelected ? selectedIconPath : iconPath,
        ),
      ),
    );
  }
}

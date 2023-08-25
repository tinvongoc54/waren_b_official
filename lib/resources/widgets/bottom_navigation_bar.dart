import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warenb/resources/utils/constants.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, this.onClick});

  VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        _renderIcon(IconPathDefinition.icHome),
        _renderIcon(IconPathDefinition.icHeart),
        _renderIcon(IconPathDefinition.icCart),
        _renderIcon(IconPathDefinition.icProfile),
      ]),
    );
  }

  Widget _renderIcon(String iconPath) {
    return SizedBox(
      child: SvgPicture.asset(iconPath),
    );
  }
}

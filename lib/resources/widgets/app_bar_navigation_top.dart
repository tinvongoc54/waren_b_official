import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warenb/resources/utils/constants.dart';

class AppBarNavigationTop extends StatelessWidget {
  final String title;
  final bool isEnableBack;
  final VoidCallback? onBack;
  final AppNavigationButton? leftButton;
  final AppNavigationButton? rightButton;

  const AppBarNavigationTop(
      {super.key,
      required this.title,
      required this.isEnableBack,
      this.onBack,
      this.leftButton,
      this.rightButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
              child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          )),
          Positioned(
              top: 35,
              left: 10,
              child: isEnableBack
                  ? SizedBox(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        IconPathDefinition.icBack,
                        fit: BoxFit.fill,
                      ),
                    )
                  : Container())
        ],
      ),
    );
  }
}

class AppNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

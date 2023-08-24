import 'package:flutter/cupertino.dart';

class ButtonIconDefinition {
  final String name;
  final String iconPath;

  ButtonIconDefinition(this.name, this.iconPath);
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {super.key, required this.button, required this.onClick});

  final ButtonIconDefinition button;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

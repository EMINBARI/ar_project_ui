import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavbarButton extends StatelessWidget {
  const NavbarButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      borderRadius: BorderRadius.circular(12.0),
      onPressed: onPressed(),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white.withOpacity(0.8),
        ),
        height: 55,
        child: icon,
      ),
    );
  }
}

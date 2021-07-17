import 'package:flutter/material.dart';

class RawIconButton extends StatelessWidget {
  RawIconButton({@required this.onPressed, @required this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}

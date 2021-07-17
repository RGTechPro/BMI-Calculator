import 'package:flutter/material.dart';
import 'constants.dart';

class dummycon extends StatelessWidget {
  final Color color;
  final Widget boxChild;
  final Function onPress;
  dummycon({@required this.color, this.boxChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: boxChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

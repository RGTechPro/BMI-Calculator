import 'package:flutter/material.dart';
import 'constants.dart';

class bottom extends StatelessWidget {
  bottom({@required this.onTap, @required this.ktext});
  final Function onTap;
  final ktext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            ktext,
            style: kcalculate,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kboxHeight,
        padding: EdgeInsets.only(bottom: 5),
      ),
    );
  }
}

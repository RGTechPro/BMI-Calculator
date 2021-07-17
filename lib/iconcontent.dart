import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final String gender;
  final IconData iconGender;
  IconContent({@required this.gender, @required this.iconGender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconGender,
          size: kheightIcon,
        ),
        SizedBox(
          height: ksizedBoxheight,
        ),
        Text(
          gender,
          textAlign: TextAlign.center,
          style: kstyleText,
        )
      ],
    );
  }
}

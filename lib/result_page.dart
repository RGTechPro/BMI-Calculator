import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/dummycon.dart';
import 'package:flutter/material.dart';
import 'bottom.dart';

class resultPage extends StatelessWidget {
  resultPage(
      {@required this.bmi, @required this.res, @required this.interpret});
  final String bmi;
  final String interpret;
  final String res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text("Your Result", style: kresultStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: dummycon(
                boxChild: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(res, style: kWeightReport),
                      Text(
                        bmi,
                        style: kBMIno,
                      ),
                      Text(
                        interpret,
                        style: kdescription,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                color: kactiveColor),
          ),
          bottom(
            ktext: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

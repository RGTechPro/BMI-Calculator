import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dummycon.dart';
import 'iconcontent.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom.dart';
import 'rawiconbutton.dart';
import 'calculation.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: dummycon(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        boxChild: IconContent(
                          gender: "MALE",
                          iconGender: FontAwesomeIcons.mars,
                        ),
                        color: selectedGender == Gender.male
                            ? kactiveColor
                            : kinactiveColor)),
                Expanded(
                    child: dummycon(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        boxChild: IconContent(
                          gender: "FEMALE",
                          iconGender: FontAwesomeIcons.venus,
                        ),
                        color: selectedGender == Gender.female
                            ? kactiveColor
                            : kinactiveColor)),
              ],
            ),
          ),
          Expanded(
              child: dummycon(
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: kstyleText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kstyleNumber,
                          ),
                          Text(
                            "cm",
                            style: kstylecm,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF60626F),
                          thumbColor: Color(0xFFEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayColor: Color(0x1FEB1555),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          max: 220,
                          min: 120,
                          onChanged: (double newVal) {
                            setState(() {
                              height = newVal.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  color: kinactiveColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: dummycon(
                        boxChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "WEIGHT",
                              style: kstyleText,
                            ),
                            Text(
                              weight.toString(),
                              style: kstyleNumber,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RawIconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      icon: FontAwesomeIcons.minus),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RawIconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      icon: FontAwesomeIcons.plus),
                                ])
                          ],
                        ),
                        color: kinactiveColor)),
                Expanded(
                    child: dummycon(
                        boxChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: kstyleText,
                            ),
                            Text(
                              age.toString(),
                              style: kstyleNumber,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RawIconButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      icon: FontAwesomeIcons.minus),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RawIconButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      icon: FontAwesomeIcons.plus),
                                ])
                          ],
                        ),
                        color: kinactiveColor)),
              ],
            ),
          ),
          bottom(
            ktext: "CALCULATE",
            onTap: () {
              calculation cal = calculation(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return resultPage(
                  bmi: cal.getBmi(),
                  interpret: cal.getInterpret(),
                  res: cal.getResult(),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}

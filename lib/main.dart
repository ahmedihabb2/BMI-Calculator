import 'package:bmi_calculator/Calculate.dart';
import 'package:bmi_calculator/ResultsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'DrawButton.dart';
import 'DrawContainer.dart';
import 'package:bmi_calculator/Consts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21)
    ),
    home: BMICalculator(),
    debugShowCheckedModeBanner: false,
  ));
}

const Color containerColor = Color(0xFF1D1E33);
const Color inActiveColor = Color(0xFF111328);

enum Gender {
  male,
  female
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  Gender gender;
  int height = 180;
  int weight = 80;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: DrawContainer(
                      color: gender == Gender.male
                          ? containerColor
                          : inActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 70.0,
                            color: Colors.grey[200],
                          ),
                          SizedBox(height: 15),
                          Text("MALE", style: infoStyle,)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: DrawContainer(
                      color: gender == Gender.female
                          ? containerColor
                          : inActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 70.0,
                            color: Colors.grey[200],
                          ),
                          SizedBox(height: 15),
                          Text("FEMALE", style: infoStyle,)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: DrawContainer(color: containerColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT', style: infoStyle,),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(height.toString(), style: numsStyle),
                    Text('cm', style: infoStyle,)
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double newVal) {
                    setState(() {
                      height = newVal.toInt();
                    });
                  },
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                )
              ],
            )
            ,),),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: DrawContainer(color: containerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: infoStyle,),
                        Text(weight.toString(), style: numsStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF4C4F5E),
                                ),
                                child: Icon(Icons.remove, color: Colors.white,),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF4C4F5E),
                                ),
                                child: Icon(Icons.add, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: DrawContainer(color: containerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: infoStyle,),
                        Text(age.toString(), style: numsStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF4C4F5E),
                                ),
                                child: Icon(Icons.remove, color: Colors.white,),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF4C4F5E),
                                ),
                                child: Icon(Icons.add, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          DrawButton(buttonTitle: 'CALCULATE', onTaped: () {
            Calculator calc = Calculator(height: height , weight:  weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ResultsPage(
                bmiResult: calc.CalculateBMI(),
                resultText: calc.getResult(),
                resultInfo: calc.getInfo(),
              );
            }));
          },)
        ],
      ),
    );
  }
}





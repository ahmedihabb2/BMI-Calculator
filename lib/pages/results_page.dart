import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/draw_button.dart';
import '../widgets/draw_container.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInfo;

  ResultsPage({
    required this.bmiResult,
    required this.resultInfo,
    required this.resultText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FittedBox(
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: DrawContainer(
                  color: backgroundColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                          color: Colors.green[600],
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          bmiResult,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 100.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          resultInfo,
                          style: TextStyle(color: Colors.white, fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )),
            DrawButton(
              buttonTitle: 'RE-CALCULATE',
              onTaped: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

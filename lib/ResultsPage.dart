import 'package:bmi_calculator/DrawButton.dart';
import 'package:bmi_calculator/DrawContainer.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInfo;
  ResultsPage({@required this.bmiResult ,@required this.resultInfo ,@required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result' , style: TextStyle(color: Colors.white,
              fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          Expanded(
            flex: 5,
            child: DrawContainer(color: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase() , style: TextStyle(
                    color: Colors.green[600],
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(bmiResult , style: TextStyle(
                    color: Colors.white,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(resultInfo , style:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
          )
          ),
          DrawButton(buttonTitle: 'RE-CALCULATE',
              onTaped: (){
            Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}

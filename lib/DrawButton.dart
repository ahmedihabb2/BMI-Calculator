import 'package:flutter/material.dart';

class DrawButton extends StatelessWidget {
  final Function onTaped;
  final String buttonTitle;

  DrawButton({@required this.buttonTitle, @required this.onTaped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTaped,
        child: Container(
    child: Center(
    child: Text(buttonTitle, style: TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    )),
    ),
    color: Color(0xFFEB1555),
    margin: EdgeInsets.only(top: 15),
    width: double.infinity,
    height: 60,
    )
    ,
    );
  }
}

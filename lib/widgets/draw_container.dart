import 'package:flutter/material.dart';

class DrawContainer extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  DrawContainer({required this.color, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      //padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

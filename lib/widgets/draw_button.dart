import 'package:flutter/material.dart';

import '../constants.dart';

class DrawButton extends StatelessWidget {
  final void Function() onTaped;
  final String buttonTitle;

  DrawButton({required this.buttonTitle, required this.onTaped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: LayoutBuilder(
        builder: (context, constrains) => Container(
          width: constrains.maxWidth > phoneWidth ? constrains.maxWidth * 0.5 : double.infinity,
          margin: EdgeInsets.all(20),
          height: 60,
          decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

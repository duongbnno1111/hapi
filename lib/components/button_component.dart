import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Function onTapFunct;
  final TextStyle styleCustom;
  ButtonComponent({this.title, this.height, this.width, this.onTapFunct, this.styleCustom});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFunct();
      },
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(20),
        color: Color(0xFF58B979),
        height: height,
        width: width,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

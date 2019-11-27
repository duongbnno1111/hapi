import 'package:flutter/material.dart';
import '../const.dart';

class SumComponent extends StatelessWidget {
  final String title1;
  final String value1;
  final String valueByWord1;
  final String title2;
  final String value2;
  final String valueByWord2;
  final bool isBorder;
  SumComponent({
    this.title1,
    this.title2,
    this.value1,
    this.value2,
    this.valueByWord1,
    this.valueByWord2,
    this.isBorder,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Text(
                  title1,
                  style: infomationStyle,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      value1,
                      style: infomationStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                valueByWord1,
                style: styleContent,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Text(
                  title2,
                  style: infomationStyle,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: isBorder ? BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ) : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        value2,
                        style: infomationStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                valueByWord2,
                style: styleContent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

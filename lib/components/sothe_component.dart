import 'package:flutter/material.dart';
import '../const.dart';

class SotheComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 7,
        right: 7,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'HỌ VÀ TÊN: NGUYỄN VĂN AB',
            style: infomationStyle,
          ),
          Text(
            'CMND        : 124-144-555',
            style: infomationStyle,
          ),
          Text(
            'SỐ THẺ      : 0102030409',
            style: infomationStyle,
          ),
        ],
      ),
    );
  }
}

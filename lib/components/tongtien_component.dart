import 'package:flutter/material.dart';
import '../const.dart';

class TongTienComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 11,
            child: Text(
              'TỔNG TIỀN',
              style: sumCostStyle,
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              '3,000,000đ',
              style: sumCostStyle,
            ),
          ),
        ],
      ),
    );
  }
}

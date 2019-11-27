import 'package:flutter/material.dart';
import '../const.dart';

class DichVuSoTienComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  'DỊCH VỤ',
                  style: infomationStyle,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'SỐ TIỀN',
                  style: infomationStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

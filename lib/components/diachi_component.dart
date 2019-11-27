import 'package:flutter/material.dart';
import '../const.dart';

class DiaChiComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
      ),
      margin: EdgeInsets.only(
        left: 7,
        right: 7,
        top: 10,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'HỌ VÀ TÊN:',
                  style: infomationStyle,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'NGUYỄN VĂN AB',
                      style: infomationStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'TUỔI: 46',
                  style: infomationStyle,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'CMND: 124-144-555',
                      style: infomationStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'ĐỊA CHỈ',
                  style: infomationStyle,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'THÔN 12, LỤC NGẠN, BẮC GIANG',
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

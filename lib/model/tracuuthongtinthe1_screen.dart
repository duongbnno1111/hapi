import 'package:flutter/material.dart';
import 'package:hapi/components/button_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sothe_component.dart';
import '../const.dart';

class TraCuuThongTinThe1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconAndStatusbar(),
            SotheComponent(),
            Container(
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
                        flex: 1,
                        child: Text(
                          'SỐ TIỀN TRONG THẺ:',
                          style: infomationStyle,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '2,500,000 Đ',
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
                        '(hai triệu năm trăm ngàn đồng)',
                        style: styleContent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'IN DANH SÁCH GIAO DỊCH',
                  styleCustom: payButtonStyle,
                  onTapFunct: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'ĐÓNG, TRẢ THẺ',
                  styleCustom: payButtonStyle,
                  onTapFunct: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hapi/components/button_component.dart';
import 'package:hapi/components/diachi_component.dart';
import 'package:hapi/components/dichvu_sotien_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/tongtien_component.dart';
import 'package:hapi/model/thanhtoanvienphi2_screen.dart';
import '../const.dart';

class ThanhToanVienPhi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconAndStatusbar(),
            DiaChiComponent(),
            DichVuSoTienComponent(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 7),
              padding: EdgeInsets.only(
                left: 5,
                top: 10,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text('X'),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 11,
                        child: Text(
                          ' Xét nghiệm máu',
                          style: infomationStyle,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '  50,000đ',
                          style: infomationStyle,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text('X'),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 11,
                        child: Text(
                          ' Chụp X-quang lồng ngực',
                          style: infomationStyle,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '150,000đ',
                          style: infomationStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TongTienComponent(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'NỘP BẰNG THẺ THANH TOÁN',
                  styleCustom: payButtonStyle,
                  onTapFunct: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThanhToanVienPhi2(),
                      ),
                    );
                  },
                ),
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'NỘP BẰNG QrCode',
                  styleCustom: payButtonStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'NỘP TIỀN MẶT TẠI QUẦY TT',
                  styleCustom: payButtonStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

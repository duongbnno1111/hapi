import 'package:flutter/material.dart';
import 'package:hapi/components/button_component.dart';
import 'package:hapi/components/diachi_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sum_component.dart';
import './nopvienphi4_screen.dart';
import '../const.dart';

class NopVienPhi3 extends StatelessWidget {
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
            SumComponent(
              title1: 'SỐ TIỀN TẠM ỨNG ÍT NHẤT:',
              value1: '2,500,000 Đ',
              valueByWord1: '(hai triệu năm trăm ngàn đồng)',
              title2: 'SỐ TIỀN ĐÓNG TẠM ỨNG:',
              value2: '3,000,000 Đ',
              valueByWord2: '(ba triệu đồng)',
              isBorder: true,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonComponent(
                  width: 150,
                  height: 70,
                  title: 'NỘP BẰNG THẺ THANH TOÁN',
                  styleCustom: payButtonStyle,
                  onTapFunct: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NopVienPhi4()));
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

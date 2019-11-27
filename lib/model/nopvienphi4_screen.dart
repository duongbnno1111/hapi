import 'package:flutter/material.dart';
import 'package:hapi/components/diachi_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sum_component.dart';
import 'package:hapi/model/nopvienphi5_screen.dart';

class NopVienPhi4 extends StatelessWidget {
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
            Container(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NopVienPhi5(),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  Text(
                    'Quý khách vui lòng đưa thẻ vào ô Quét thẻ để thanh toán',
                  ),
                  Container(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage('images/thanh_toan.png'),
                    height: 130,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

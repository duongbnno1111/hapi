import 'package:flutter/material.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sothe_component.dart';
import 'package:hapi/components/sum_component.dart';
import 'package:hapi/model/ruttientuthe3_screen.dart';

class RutTienTuThe2 extends StatelessWidget {
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
            SumComponent(
              title1: 'SỐ TIỀN TRONG THẺ:',
              value1: '2,500,000 Đ',
              valueByWord1: '(hai triệu năm trăm ngàn đồng)',
              title2: 'SỐ TIỀN MUỐN RÚT ',
              value2: '1,200,000 Đ',
              valueByWord2: '(một triệu hai trăm ngàn đồng)',
              isBorder: true,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RutTienTuThe3(),
                    ),
                  );
                },
                child: Image(
                  width: 260,
                  image: AssetImage('images/ban_phim.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

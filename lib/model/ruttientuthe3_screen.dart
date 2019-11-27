import 'package:flutter/material.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sothe_component.dart';
import 'package:hapi/components/sum_component.dart';
import '../const.dart';

class RutTienTuThe3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
              isBorder: false,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Vui lòng nhập 4 số cuối của CMND để tiếp tục',
                style: styleContent,
              ),
            ),
            Container(
              width: 240,
              height: 30,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  contentPadding: EdgeInsets.all(7),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 10,
                  ),
                  Image(
                    image: AssetImage('images/ban_phim.png'),
                    width: 240,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

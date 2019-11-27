import 'package:flutter/material.dart';
import 'package:hapi/components/diachi_component.dart';
import 'package:hapi/components/dichvu_sotien_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/tongtien_component.dart';
import '../const.dart';

class ThanhToanVienPhi2 extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
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

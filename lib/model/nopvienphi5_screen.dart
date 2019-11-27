import 'package:flutter/material.dart';
import 'package:hapi/components/dichvu_sotien_component.dart';
import 'package:hapi/components/icon_and_statusbar_component.dart';
import 'package:hapi/components/sothe_component.dart';
import 'package:hapi/components/tongtien_component.dart';
import '../const.dart';

class NopVienPhi5 extends StatelessWidget {
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
                        flex: 2,
                        child: Text(
                          'SỐ TIỀN TRONG THẺ:',
                          style: infomationStyle,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '5,000,000 Đ',
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
                        '(Năm triệu đồng)',
                        style: infomationStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
                      Expanded(
                        flex: 11,
                        child: Text(
                          '1  Tạm ứng viện phí',
                          style: infomationStyle,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          '3,000,000đ',
                          style: infomationStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TongTienComponent(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Vui lòng nhập 4 số cuối CMND để tiếp tục',
              textAlign: TextAlign.center,
            ),
            Container(
              width: 200,
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
                    width: 200,
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

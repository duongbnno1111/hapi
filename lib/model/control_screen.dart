import 'package:flutter/material.dart';
import 'package:hapi/components/spashscreen1_component.dart';
import 'package:hapi/components/splashscreen2_component.dart';
import 'package:hapi/model/nopvienphi2_screen.dart';
import 'package:hapi/model/ruttientuthe2_screen.dart';
import 'package:hapi/model/thanhtoanvienphi1_screen.dart';
import 'package:hapi/model/tracuuthongtinthe1_screen.dart';
import '../components/button_component.dart';
import 'naptienthethanhtoan_screen.dart';

class ControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
              height: 70,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.green,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ButtonComponent(
                    title: 'Nộp tạm ứng viện phí',
                    height: 100,
                    width: 110,
                    onTapFunct: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen1(
                            nextPage: NopVienPhi2(),
                            title: 'Nộp tạm ứng viện phí',
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ButtonComponent(
                    title: 'Thanh toán viện phí, dịch vụ',
                    height: 100,
                    width: 110,
                    onTapFunct: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen1(
                            nextPage: ThanhToanVienPhi1(),
                            title: 'Thanh toán viện phí, dịch vụ',
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ButtonComponent(
                    title: 'Rút tiền từ thẻ thanh toán',
                    height: 100,
                    width: 110,
                    onTapFunct: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen2(
                            nextPage: RutTienTuThe2(),
                            title: 'Thanh toán viện phí, dịch vụ',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonComponent(
                  title: 'Tra cứu thông tin thẻ',
                  height: 100,
                  width: 110,
                  onTapFunct: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen2(
                          nextPage: TraCuuThongTinThe1(),
                          title: 'Tra cứu thông tin thẻ thanh toán',
                        ),
                      ),
                    );
                  },
                ),
                ButtonComponent(
                  title: 'Nạp tiền thẻ thanh toán',
                  height: 100,
                  width: 110,
                  onTapFunct: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen2(
                          nextPage: NapTienTheThanhToan1(),
                          title: 'Nạp tiền thẻ thanh toán',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Quý khách vui lòng chọn một trong các dịch vụ trên để tiếp tục',
            ),
            Text(
              'Gọi 1900 0102 hoặc liên hệ quầy tiếp đón để được hỗ trợ',
            ),
            Expanded(
              child: Image(
                width: double.infinity,
                image: AssetImage('images/background.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

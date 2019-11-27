import 'package:flutter/material.dart';
import '../const.dart';

class SplashScreen2 extends StatelessWidget {
  final Widget nextPage;
  final String title;
  SplashScreen2({this.nextPage, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
              height: 30,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      child: Text(
                        '<-Quay lại',
                        style: styleContent,
                        textAlign: TextAlign.end,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Quý khách vui lòng đưa thẻ vào ô Quét thẻ',
                    style: styleContent,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => nextPage,
                  ),
                );
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

import 'package:flutter/material.dart';
import '../const.dart';

class SplashScreen1 extends StatelessWidget {
  final Widget nextPage;
  final String title;
  SplashScreen1({this.nextPage, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: false,
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'MÃ/CMND NGƯỜI BỆNH  ',
                  style: styleContent,
                ),
                Container(
                  width: 150,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ),
              ],
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
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(
                  image: AssetImage('images/ban_phim.png'),
                  width: 300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

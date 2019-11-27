import 'package:flutter/material.dart';
import '../const.dart';

class IconAndStatusbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    'Nạp tiền thẻ thanh toán',
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
      ],
    );
  }
}

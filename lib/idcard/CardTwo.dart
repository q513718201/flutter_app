import 'package:flutter/material.dart';
import 'package:flutter_app/BaseCard.dart';

class CardTwo extends BaseCard {
  @override
  BaseCardState createState() => _CardTwoState();
}

class _CardTwoState extends BaseCardState {
  @override
  void initState() {
    currentColor = Colors.green;
    super.initState();
  }

  @override
  topTitle(String s) {
    // TODO: implement topTitle
    return super.topTitle('一键分享');
  }

  @override
  topTitle2(String s) {
    // TODO: implement topTitle2
    return Padding(
      padding: EdgeInsets.only(bottom: 2),
      child: Text(
        ' /第20期',
        style: TextStyle(fontSize: 11),
      ),
    );
  }

  @override
  Widget subTitle(String s) {
    // TODO: implement subTitle
    return super.subTitle('分享属于你的时刻');
  }

  @override
  bottomWidget() {
    // TODO: implement bottomWidget
    return Expanded(
      child: Container(
        color: Color(0xfff6f7f9),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573640492859&di=b16d3838de8ffa4c289b6f4837fc377e&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F316df86677393bdc1108b03cbfe94ea0a5f470171e929-5h7zfq_fw658'),
            )),

            Container(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    '2019 人数参加',
                    style: TextStyle(color: Colors.green),
                  ),
                )
            )

          ],
        ),
      ),
    );
  }
}

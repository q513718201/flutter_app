import 'package:flutter/material.dart';
import 'package:flutter_app/BaseCard.dart';

class CardCommend extends BaseCard {
  @override
  BaseCardState createState() => _CardCommendState();
}

class _CardCommendState extends BaseCardState {
  @override
  void initState() {
      currentColor=Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String s) {
    // TODO: implement topTitle
    return Text('本周推荐');
  }
  @override
  Widget subTitle(String s) {
    // TODO: implement subTitle
    return super.subTitle('每周推荐一款卡片');
  }

  @override
  bottomWidget() {
    // TODO: implement bottomWidget
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.only(top: 20),
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574143982&di=0bb1bd70123aa63eeb2ae5e5a6ef4af7&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.qq745.com%2Fuploads%2Fallimg%2F160818%2F11-160QPZ339-50.jpg',fit:BoxFit.cover ,),
      ),
    );
  }
}

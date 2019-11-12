import 'package:flutter/material.dart';
import 'package:flutter_app/BaseCard.dart';

class CardTwo extends BaseCard {
  @override
  BaseCardState createState() => _CardTwoState();
}

class _CardTwoState extends BaseCardState {
  @override
  void initState() {
      currentColor=Color(0xffff0000);
    super.initState();
  }

  @override
  topTitle(String s) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }
  @override
  Widget subTitle(String s) {
    // TODO: implement subTitle
    return super.subTitle('美女共观赏');
  }

  @override
  bottomWidget() {
    // TODO: implement bottomWidget
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573549265472&di=e8d9799285603eb4033c6f3191a24ee9&imgtype=0&src=http%3A%2F%2Fimg.11665.com%2Fimg4_p3%2Fi4%2F921963549%2FTB2XEPVd4qK.eBjSZJiXXaOSFXa_%2521%2521921963549.jpg',fit:BoxFit.cover ,),
      ),
    );
  }
}

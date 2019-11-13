import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/CardCommend.dart';
import 'package:flutter_app/CustomBar.dart';
import 'package:flutter_app/idcard/CardThree.dart';
import 'package:flutter_app/idcard/CardTwo.dart';

class ContainerView extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContainerPageGo containerPageGo;

  const ContainerView({Key key, this.onPageChanged, this.containerPageGo})
      : super(key: key);

  @override
  _ContainerState createState() => _ContainerState();
}

class _ContainerState extends State<ContainerView> {
  List<Color> listColor = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple
  ];
  int currentIndex = 0;
  PageController mPageController = PageController(viewportFraction: 0.9);

  @override
  void initState() {
    if (widget.containerPageGo != null) {
      widget.containerPageGo.mPageController = mPageController;
    }
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: Color(0xFF000000),
          systemNavigationBarDividerColor: null,
          statusBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomBar(),
        Expanded(
          child: PageView(
            controller: mPageController,
           // physics: NeverScrollableScrollPhysics(),
            onPageChanged: widget.onPageChanged,
            children: <Widget>[
              wropItem(CardCommend()),
              wropItem(CardTwo()),
              wropItem(CardThree()),
              wropItem(CardTwo())
            ],
          ),
        )
      ],
    );
  }

  Widget wropItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: widget,
    );
  }
}

//北内容控制区域
class ContainerPageGo {
  PageController mPageController;

  void goPage(int page) {
    mPageController?.jumpToPage(page);
  }
}

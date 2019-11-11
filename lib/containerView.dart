import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContainerPageGo containerPageGo;
  const ContainerView({Key key, this.onPageChanged,this.containerPageGo}) : super(key: key);

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
  PageController mPageController=PageController(
      viewportFraction: 0.9
  );

  @override
  void initState() {
  if(widget.containerPageGo!=null){
    widget.containerPageGo.mPageController=mPageController;
  }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            controller:mPageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: widget.onPageChanged,
            children: <Widget>[
              wropItem(0),
              wropItem(1),
              wropItem(2),
              wropItem(3)
            ],
          ),
        )
      ],
    );
  }

  Widget wropItem(int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        color: listColor[index],
        child: Center(
          child: Text('这是第$index个页面'),
        ),
      ),
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

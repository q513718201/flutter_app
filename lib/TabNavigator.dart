import 'package:flutter/material.dart';
import 'package:flutter_app/containerView.dart';

class TabNagivtor extends StatefulWidget {
  @override
  _TabNagivtorState createState() => _TabNagivtorState();
}

class _TabNagivtorState extends State<TabNagivtor> {
  final default_color = Colors.grey;
  final active_color = Colors.blue;
  int currenIndex = 0;
  final ContainerPageGo containerPageGo = ContainerPageGo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: ContainerView(
            containerPageGo: containerPageGo,
            onPageChanged: (int index) {
              setState(() {
                currenIndex = index;
              });
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenIndex,
          onTap: (index) {
            containerPageGo.goPage(index);
            setState(() {
              currenIndex = index;
            });

          },
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomIcon('本周', Icons.folder, 0),
            _bottomIcon('分享', Icons.explore, 1),
            _bottomIcon('免费', Icons.data_usage, 2),
            _bottomIcon('我的', Icons.person, 3),
          ]),
    );
  }

  _bottomIcon(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: default_color,
        ),
        activeIcon: Icon(
          icon,
          color: active_color,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: currenIndex != index ? default_color : active_color),
        ));
  }
}

import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
         
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: <Widget>[topWidget(), bottomWidget()],
        ),
    );
  }

  topWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              topTitle('')
            ],
          ),
          subTitle('')
        ],
      ),
    );
  }

  bottomWidget() {
    return Container();
  }

  Widget subTitle(String s) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        10,
        0,
        0,
      ),
      child: Text(s),
    );
  }

  topTitle(String s) {
    return Text(s);
  }
}

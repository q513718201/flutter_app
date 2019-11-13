import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {

  Color currentColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: <Widget>[topWidget(), bottomWidget()],
      ),
    );
  }

  topWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Row(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[
             topTitle(''),
             topTitle2('')
           ],
         ),
          subTitle(''),
         ],

      ),
    );
  }

  bottomWidget() {
    return Container();
  }

  Widget subTitle(String s) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        s,style: TextStyle(fontSize: 11,color: currentColor),
      ),
    );
  }

  topTitle(String s) {
    return Text(
      s,
    );
  }

  topTitle2(String s) {
    return Container();
  }

}

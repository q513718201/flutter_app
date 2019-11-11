import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double top = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.fromLTRB(20, top + 10, 20, 10),
      padding: EdgeInsets.fromLTRB(20, 10,10, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Container(
            width: 10,
          ),
          Expanded(
            //横向撑开
            child: Text('常山赵子龙',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
          ),
          Container(
            width: 1,
            height: 20,
            color: Colors.grey,
            margin: EdgeInsets.only(right: 10),
          ),
          Text('全部',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/BaseCard.dart';

class CardThree extends BaseCard {
  @override
  BaseCardState createState() => _CardThree();
}

const BOOK_LIST = [
  {
    'title': '暴力沟通',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346315&di=4376057c73b19a86f93f65bbdefad5ec&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fdb11decf4fafac3ecd9f58fa28e912c9fda533993681a-swJlAm_fw658'
  },
  {
    'title': '美女野兽',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346518&di=d61099652af615a4761f1cba9346e24d&imgtype=0&src=http%3A%2F%2Fpic40.nipic.com%2F20140330%2F13328950_214049330194_2.jpg'
  },
  {
    'title': '撒发顺丰',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346517&di=483803cb5aaf748f4e7cf74f390f3d4e&imgtype=0&src=http%3A%2F%2Fpic29.nipic.com%2F20130506%2F7447430_125253433000_2.jpg'
  },
  {
    'title': '对方沟通的法国华人',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573650567653&di=70a777af01f49e95c8d0730b4fe15bb0&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130605%2F7447430_163114965000_2.jpg'
  },
  {
    'title': '啊大苏打发给对方',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346516&di=d1865542b68a01bce8e32b83358f3583&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130625%2F7447430_154243908000_2.jpg'
  },
  {
    'title': '事故发生的',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346315&di=4376057c73b19a86f93f65bbdefad5ec&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fdb11decf4fafac3ecd9f58fa28e912c9fda533993681a-swJlAm_fw658'
  },
  {
    'title': '对方沟通大沙发沙发沙发沙发',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573650567653&di=70a777af01f49e95c8d0730b4fe15bb0&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130605%2F7447430_163114965000_2.jpg'
  },
  {
    'title': '啊大苏打',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346516&di=d1865542b68a01bce8e32b83358f3583&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130625%2F7447430_154243908000_2.jpg'
  },
  {
    'title': '事故发生的',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346315&di=4376057c73b19a86f93f65bbdefad5ec&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fdb11decf4fafac3ecd9f58fa28e912c9fda533993681a-swJlAm_fw658'
  },
  {
    'title': '对方沟通',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573650567653&di=70a777af01f49e95c8d0730b4fe15bb0&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130605%2F7447430_163114965000_2.jpg'
  },
  {
    'title': '啊大苏打',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346516&di=d1865542b68a01bce8e32b83358f3583&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130625%2F7447430_154243908000_2.jpg'
  },
  {
    'title': '事故发生的',
    'price': '21.5',
    'icon':
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573649346315&di=4376057c73b19a86f93f65bbdefad5ec&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fdb11decf4fafac3ecd9f58fa28e912c9fda533993681a-swJlAm_fw658'
  },
];

class _CardThree extends BaseCardState {
  @override
  void initState() {
    currentColor = Colors.deepOrange;
    super.initState();
  }

  @override
  topTitle(String s) {
    // TODO: implement topTitle
    return super.topTitle('免费卡片');
  }

  @override
  Widget subTitle(String s) {
    // TODO: implement subTitle
    return super.subTitle('免推推荐24张卡片');
  }

  @override
  bottomWidget() {
    // TODO: implement bottomWidget
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: bookList(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  bookList() {
    //书籍列表
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return ItemView(item);
      }).toList(),
    );
  }

  bottomButton() {
    //底部按钮

    return Container(
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Padding(padding:EdgeInsets.only(top: 20,left: 20,right: 20),
          child:  RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              child: Text('免费领取',style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
        ),
      )

       ,
    );
  }

  Widget ItemView(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                '${item['icon']}',
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.play_arrow,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  color: Colors.black38,
                  child: Text(
                    '价格:${item['price']}',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}

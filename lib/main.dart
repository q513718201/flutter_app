//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.amber,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//            title: Align(
//          child: Text('hello',
//              style: TextStyle(fontSize: 20.0, color: Color(0xfff2f577))),
//        )),
//        body: Center(
//          child: Container(
//            child: new Image.network(
//              'https://img3.mukewang.com/szimg/5da13cab09466e9105400306-360-202.png',
//              scale: 2,
////              fit: BoxFit.fill,
//            repeat: ImageRepeat.repeatX,
//            ),
//            width: 300,
//            height: 200,
//            color: Colors.blue,
////              child: Text('第一个第一个',
////                  textAlign: TextAlign.left,
////                  maxLines: 1,
////                  overflow: TextOverflow.ellipsis,
////                  style: TextStyle(
////                    fontSize: 20.0,
////                    color: Color(0xffff0000),
////                  )),
////              alignment: Alignment.topLeft,
////              width: 500.0,
////              height: 500.0,
////              padding: const EdgeInsets.all(20.0),
////              margin: const EdgeInsets.all(20.0),
////              decoration: BoxDecoration(
////                  gradient: const LinearGradient(
////                      colors: [Colors.blue, Colors.red, Colors.pink])
////              )
//          ),
//        ),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:flutter_app/TabNavigator.dart';

void main() =>
    runApp(MainApp(items: new List<String>.generate(1000, (i) => "Items$i")));

class MainApp extends StatelessWidget {
  final List<String> items;

  MainApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'MyApp',
//        theme: ThemeData(
//          primaryColor: Colors.blue
//        ),
        home: Scaffold(

            body: TabNagivtor()
//              child: GridView(
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 3,
//                  mainAxisSpacing: 2,
//                  crossAxisSpacing: 2,
//                ),
//                children: <Widget>[
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img1.mukewang.com/szimg/5d5377660922e54c12000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img1.mukewang.com/szimg/5d5377660922e54c12000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img1.mukewang.com/szimg/5d5377660922e54c12000676-360-202.png',fit: BoxFit.fill,),
//                  Image.network('https://img4.mukewang.com/szimg/5db7fa4f09a2b64312000676-360-202.png',fit: BoxFit.fill,),
//
//                ],
//              ),
//            child: ListView.builder(
//              itemCount:items.length,
//                itemBuilder: (context,index){
//                return new ListTile(
//                 title: new Text('${items[index]}')
//                );
//                }
//            ),
            ));
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 100,
          color: Colors.blue,
        ),
        new Container(
          width: 100,
          color: Colors.red,
        ),
        new Container(
          width: 100,
          color: Colors.pink,
        ),
        new Container(
          width: 100,
          color: Colors.purple,
        ),
        new Container(
          width: 100,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

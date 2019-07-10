import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  MyContainer({this.title});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        transform: Matrix4.rotationZ(0.1),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        height: 300.0,
        width: 300.0,
        child: Text(
          "Container and Text",
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          //字体倍率
          textScaleFactor: 1.0,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            //字间距
            letterSpacing: 2.0,
            //文字装饰线
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.double,
            //单词间隙,负值,单词紧凑
            wordSpacing: 2.0,
          ),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.red,
              width: 6.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(60.0))),
      ),
    );
  }
}

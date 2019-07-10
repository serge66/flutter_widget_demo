import 'package:flutter/material.dart';

class MyPhoto extends StatefulWidget {
  MyPhoto({this.title});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyPhoto> {
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
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
      ),
    );
  }
}

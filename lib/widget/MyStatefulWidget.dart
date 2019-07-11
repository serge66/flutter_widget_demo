import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({this.title = "Demo"});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Chip(
              label: Text("$_count"),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text(
                "按钮",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                setState(() {
                  this._count++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back_ios),
          //   onPressed: () => Navigator.pop(context),
          // ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[Text("hello")],
          ),
        ));
  }
}

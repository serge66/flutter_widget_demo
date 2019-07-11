import 'package:flutter/material.dart';

class MyForm2 extends StatelessWidget {
  final Map arguments;
  MyForm2({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${arguments['title']}"),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back_ios),
          //   onPressed: () => Navigator.pop(context),
          // ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
              ),
              Text("传过来的值是:${arguments['key']}"),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text("点击返回"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}

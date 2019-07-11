import 'package:flutter/material.dart';

class MyWorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
          ),
          RaisedButton(
            child: Text('点击跳转 传值'),
            onPressed: () {
              Navigator.pushNamed(context, "/form_page2",
                  arguments: {'key': '123', 'title': '跳转后界面'});
            },
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            child: Text('点击跳转 不传值'),
            onPressed: () {
              Navigator.pushNamed(context, "/form_page");
            },
          )
        ],
      ),
    );
  }
}

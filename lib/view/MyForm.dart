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
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "请输入要搜索的内容"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "密码"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "多行文本",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.people), hintText: "请输入用户名"),
              )
            ],
          ),
        ));
  }
}

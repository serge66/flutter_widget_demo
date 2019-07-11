import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/widget/MsgCode.dart';
import 'package:flutter_widget_demo/widget/ProgressDialog.dart';
import 'package:flutter_widget_demo/utils/ZKStrings.dart';

class JFRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("供应方注册"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool dialogShow = false;
  String codeMsg = "获取验证码";

  static TextEditingController _textEditingController =
      new TextEditingController();

  static TextEditingController _textEditingController2 =
      new TextEditingController();

  static TextEditingController _textEditingController3 =
      new TextEditingController();

  static TextEditingController _textEditingController4 =
      new TextEditingController();

  @override
  void dispose() {
    _textEditingController?.clear();
    _textEditingController2?.clear();
    _textEditingController3?.clear();
    _textEditingController4?.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressDialog(
      loading: dialogShow,
      msg: ZKStrings.netProgressMsg,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                controller: _textEditingController,
                minLines: 1,
                maxLines: 1,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "请输入企业名称",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    labelText: "企业名称",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textEditingController2,
                      minLines: 1,
                      maxLines: 1,
                      // maxLength: 11,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: "请输入手机号码",
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                          labelText: "手机号",
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.black)),
                    ),
                  ),
                  MsgCode(
                      available: true,
                      onTapCallback: () {
                        print("object");
                      }),
                ],
              ),
            ),
            Container(
              child: TextField(
                controller: _textEditingController3,
                minLines: 1,
                maxLines: 1,
                // maxLength: 11,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "请输入验证码",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    labelText: "验证码",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Container(
              child: TextField(
                controller: _textEditingController4,
                minLines: 1,
                maxLines: 1,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "请设置密码",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    labelText: "密码",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              // padding: const EdgeInsets.fromLTRB(0, 100, 0, 10),
              width: 300,
              height: 40,
              child: RaisedButton(
                child: Text("立即注册"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

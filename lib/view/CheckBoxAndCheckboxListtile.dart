import 'package:flutter/material.dart';

class CheckBoxAndCheckboxListtile extends StatefulWidget {
  @override
  _CheckBoxAndCheckboxListtileState createState() =>
      _CheckBoxAndCheckboxListtileState();
}

class _CheckBoxAndCheckboxListtileState
    extends State<CheckBoxAndCheckboxListtile> {
  bool flag = true;
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Column(
        children: <Widget>[
          Text('CheckBox'),
          Checkbox(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            title: Text('我是一级标题'),
            subtitle: Text('我是二级标题'),
            secondary: Icon(Icons.people),
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
            selected: this.flag,
          ),
          Divider(),
          Row(
            children: <Widget>[
              Text('男'),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
              ),
              SizedBox(
                width: 20,
              ),
              Text('女'),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
              ),
            ],
          ),
          Text("当前选择: ${this.sex == 1 ? '男' : '女'}"),
          Divider(),
          RadioListTile(
            value: 1,
            groupValue: this.sex,
            title: Text('我是一级标题'),
            subtitle: Text('我是二级标题'),
            secondary:
                Image.network('https://www.itying.com/images/flutter/4.png'),
            selected: this.sex == 1,
            onChanged: (v) {
              setState(() {
                this.sex = v;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: this.sex,
            title: Text('我是一级标题'),
            subtitle: Text('我是二级标题'),
            secondary: Icon(Icons.people),
            selected: this.sex == 2,
            onChanged: (v) {
              setState(() {
                this.sex = v;
              });
            },
          ),
          Divider(),
          Switch(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
          ),
        ],
      ),
    );
  }
}

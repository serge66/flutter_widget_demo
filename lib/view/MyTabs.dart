import 'package:flutter/material.dart';
import 'MyWorkPage.dart';
import 'MyMinePage.dart';
import 'MyContactPage.dart';
import 'MyProjectPage.dart';

class MyTabs extends StatefulWidget {
  MyTabs({this.title = "Demo"});
  final String title;
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<MyTabs> {
  int _currentIndex = 0;
  List pages = [MyWorkPage(), MyProjectPage(), MyContactPage(), MyMinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: this.pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        currentIndex: this._currentIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text("OA"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web),
            title: Text("项目"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("联系人"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.memory),
            title: Text("我的"),
          ),
        ],
      ),
    );
  }
}

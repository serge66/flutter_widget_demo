import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    //顶部tabbar实现,必须用DefaultTabController
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBarDemo"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('one'),
            Text('two'),
          ],
        ),
      ),
    );
  }
}

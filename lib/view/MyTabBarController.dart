import 'package:flutter/material.dart';

class MyTabBarController extends StatefulWidget {
  @override
  _MyTabBarControllerState createState() => _MyTabBarControllerState();
}

//另一种方式实现顶部tabbar,可以监听一些事件
class _MyTabBarControllerState extends State<MyTabBarController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabController'),
        bottom: TabBar(
          //必须配置这个
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: '推荐',
            ),
            Tab(
              text: '热门',
            )
          ],
        ),
      ),
      body: TabBarView(
        //必须配置这个
        controller: _tabController,
        children: <Widget>[
          Text('推荐'),
          Text('热门'),
        ],
      ),
    );
  }
}

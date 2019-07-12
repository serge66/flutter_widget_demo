import 'package:flutter/material.dart';

class MyProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: Text(""),
          title: TabBar(
            tabs: <Widget>[
              Tab(
                text: '热门',
              ),
              Tab(
                text: '推荐',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('data'),
            Text('data22222222'),
          ],
        ),
      ),
    );
  }
}

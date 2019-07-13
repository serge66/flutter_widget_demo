import 'package:flutter/material.dart';

import '../view/JFRegister.dart';
import '../view/MyTabs.dart';
import '../widget/MyContainer.dart';
import '../widget/MyGridView.dart';
import '../widget/MyList.dart';
import '../widget/MyPhoto.dart';
import '../widget/MyStatefulWidget.dart';
import '../widget/RowColumnExpanded.dart';
import '../widget/MyCard.dart';
import 'MyTabBar.dart';

class MyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Demo"),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("供应商注册"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JFRegister()));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("Container and Text"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyContainer(title: "Container and Text")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("Image"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyPhoto(title: "Image")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("List"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyList(title: "List")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("GridView"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyGridView(title: "GridView")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("Row Column Expanded"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RowColumnExpanded(title: "Row Column Expanded")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("Card"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyCard(title: "Card")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("StatefulWidget"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyStatefulWidget(title: "StatefulWidget")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("BottomNavigationBar"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyTabs(title: "BottomNavigationBar")));
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("TabBar"),
                onPressed: () {
                  Navigator.pushNamed(context, '/tabbar_page');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("TabBarController"),
                onPressed: () {
                  Navigator.pushNamed(context, '/tabcontroller_page');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("表单"),
                onPressed: () {
                  Navigator.pushNamed(context, '/form_page');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("checkbox radio"),
                onPressed: () {
                  Navigator.pushNamed(context, '/check_page');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              child: RaisedButton(
                child: Text("Date Time"),
                onPressed: () {
                  Navigator.pushNamed(context, '/datatime_page');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

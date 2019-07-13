import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/view/CheckBoxAndCheckboxListtile.dart';
import 'package:flutter_widget_demo/view/DateAndTime.dart';
import 'package:flutter_widget_demo/view/MyMain.dart';
import 'package:flutter_widget_demo/view/MyTabBar.dart';
import 'package:flutter_widget_demo/view/MyTabBarController.dart';
import '../view/MyForm.dart';
import '../view/MyForm2.dart';
import '../main.dart';

//配置路由
var routers = {
  '/': (context) => MyMain(),
  '/datatime_page': (context) => DateAndTime(),
  '/tabbar_page': (context) => MyTabBar(),
  '/check_page': (context) => CheckBoxAndCheckboxListtile(),
  '/tabcontroller_page': (context) => MyTabBarController(),
  '/form_page': (context) => MyForm(),
  '/form_page2': (context, {arguments}) => MyForm2(arguments: arguments),
};

//固定写法
var onMyGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};

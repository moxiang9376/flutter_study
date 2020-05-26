import 'package:flutter/material.dart';
import 'package:test1/pages/home_page.dart';


void main() => runApp(new MyApp());//main函数是程序的主入口

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //返回一个material规范的app
    return new MaterialApp(
      title: 'Activity Record',//这个title是你打开任务管理器的时候显示的名字
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}
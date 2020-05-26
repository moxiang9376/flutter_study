/*
diy活动新增页面
涉及用户输入所以继承自状态可变的StatefulWidget
采用全屏对话框的形式展现
 */
import 'package:flutter/material.dart';

class DiyAddDialog extends StatefulWidget{
  @override
  DiyAddDialogState createState() => new DiyAddDialogState();

}

class DiyAddDialogState extends State<DiyAddDialog>{
  final _title = '新增活动';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title),
      ),
      body: new Center(
        child: new Text('这是新增活动页面'),
      ),
    );
  }
}
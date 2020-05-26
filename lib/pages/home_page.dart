import 'package:flutter/material.dart';

import 'diy_add_dialog.dart';

/*
这是首页，包含标题栏、底部导航栏和浮动按钮
因为
 */

/*  
    先声明一个有状态的widget
    再通过createState()调用HomePageState类
    HomePageState生成一个名字叫HomePage的State
*/
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final _title = '活动展示'; //appBar标题，前置下划线表示该成员变量类内可见

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //标题栏，包含一个标题和一个图标按钮
      appBar: new AppBar(
        title: new Text(_title),
        //图标，onPressed是绑定的点击事件
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.face), onPressed: () {})
        ],
      ),
      //中间区域内容
      body: new Center(
        child: new Text('这是首页内容展示区域'),
      ),
      //底部导航栏
      bottomNavigationBar: new BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.favorite),
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(Icons.format_line_spacing),
            onPressed: () {},
          )
        ],
      )


          ),
      //右下角添加按钮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          openAdd(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}

Function openAdd(BuildContext context) {
  Navigator.of(context).push(
    new MaterialPageRoute(builder: (context) {
      return new DiyAddDialog();
    }),
  );
}

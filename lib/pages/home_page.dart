import 'package:flutter/material.dart';
import 'package:test1/model/diy_project.dart';
import 'package:test1/ui/diy_list_show.dart';
import 'diy_add_dialog.dart';

/*
这是首页，包含标题栏、底部导航栏和浮动按钮
因为
 */
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final _title = '活动展示'; //appBar标题，前置下划线表示该成员变量类内可见

  //初始化三个项目数据
  List<DiyProject> _diyProjects = [
    new DiyProject('多肉种植', '2018-11-2', '万达广场', '苏苏', 'images/1.jpg', 30, 50,
        1500, 500, 300, 700, false),
    new DiyProject('彩绘尤克里里', '2018-10-22', '寰宇城', '盼盼', 'images/2.jpg', 20, 30,
        600, 500, 500, 1500, false),
    new DiyProject('小饼干制作', '2018-9-15', '滨江新城', '磊磊', 'images/3.jpg', 40, 50,
        2000, 600, 200, 800, false),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //标题栏，包含一个标题和一个图标按钮
      appBar: new AppBar(
        title: new Text(_title),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.face), onPressed: () {})
        ],
      ),
      body: new ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return new DiyListShow(
            diyItem: _diyProjects[index],
          );
        },
      ),
      bottomNavigationBar: new BottomAppBar(
        child: Row(
          //将横布局下的子控件按照头尾的方式摆放
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) {
              return new DiyAddDialog();
            }),
          );
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}

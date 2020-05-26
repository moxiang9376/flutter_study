
import 'package:flutter/material.dart';
import 'package:test1/model/diy_project.dart';

class DiyListShow extends StatefulWidget {
  //将项目对象作为参数配置给DiyListShow的构造函数
  DiyListShow({Key key, this.diyItem}) : super(key: key);
  DiyProject diyItem;
  @override
  State<StatefulWidget> createState() => new DiyListShowState();
}

class DiyListShowState extends State<DiyListShow> {
  @override
  Widget build(BuildContext context) {
    //card第一行时间和预留按钮菜单
    Widget _rowTime() {
      return new Container(
        //设置距离左边8.0的内间距
        padding: const EdgeInsets.only(left: 8.0),
        child: new Row(
          //表示两个子空间头尾分布
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(widget.diyItem.date),
            new IconButton(
              icon: new Icon(Icons.more_horiz),
              onPressed: () {},
            )
          ],
        ),
      );
    }

    //card第三行名称和地点
    Widget _rowNameAndPlace() {
      return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(widget.diyItem.name,
                style:
                    new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
            new Text(widget.diyItem.place),
          ],
        ),
      );
    }

    //进行card里的内容组合
    Widget _diyContentShow() {
      return Container(
        height: 288.0,
        child: new Column(
          children: <Widget>[
            _rowTime(),
            //使用expanded将填充控件的剩余空间
            new Expanded(
                //flex代表这个控件在父控件里的范围比例，默认是1，这里表示在高度288的容器里，图片会填满剩余的所有空间
                flex: 3,
                child: new Image.asset(
                  widget.diyItem.imagePath,
                  fit: BoxFit.cover,
                  width: 400.0,
                )),
            _rowNameAndPlace(),
            new Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: new Row(
                children: <Widget>[
                  new Text(
                    '${widget.diyItem.singlePrcie.toString()}元',
                    style: new TextStyle(
                        fontSize: 15.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  new SizedBox(
                    width: 20.0,
                  ),
                  new Text(
                    '${widget.diyItem.nums.toString()}份',
                    style: new TextStyle(
                        fontSize: 15.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    //将整个项目展示内容包裹在card里
    return new Card(
      margin: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 9.0), //设置外边距18
      //card形状设置顶部圆形弧度12，底部没有
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
      //inkwell是一个带水波纹触摸效果的控件，预留点击回调作为以后点击响应事件
      child: new InkWell(
        onTap: () {},
        child: _diyContentShow(),
      ),
    );
  }
}
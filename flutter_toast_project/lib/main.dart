import 'package:flutter/material.dart';
import './page/home.dart';
import './page/shop.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        //       title: "toast",
        theme: ThemeData(primaryColor: Colors.grey[350]),
        home: new MyAppWidget());
  }
}

class MyAppWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppWidgetStete();
  }
}

class MyAppWidgetStete extends State<MyAppWidget> {
  int _tabIndex = 0; //  tab下标
  var _tabImages;
  var appBarTitles = ["首页", "商铺", "消息", "我的"];

  /**
   * 获取图标
   */
  Image getTabImage(path) {
    return Image.asset(path, width: 20.0, height: 20.0);
  }

  /**
   * 获取bottomTab的文字和颜色
   */
  Text getTabTitle(int index) {
    // 选中颜色
    if (index == _tabIndex) {
      return new Text(
        appBarTitles[index],
        style: new TextStyle(color: const Color(0xff63ca6c)),
      );
    } else {
      return new Text(
        appBarTitles[index],
        style: new TextStyle(color: const Color(0xff888888)),
      );
    }
  }

  Image getImage(int index){
    return _tabImages[index];
  }
  //  存储对应的页面
  var _body;

  void initData(){
    _tabImages = [
        getTabImage("lib/images/home.png"),
        getTabImage("lib/images/shop.png"),
        getTabImage("lib/images/message.png"),
        getTabImage("lib/images/my.png")
    ];
    _body = [
      new HomePage(context),
      new ShopPage(context),
      new HomePage(context),
      new HomePage(context)
    ];
  }
  @override
  Widget build(BuildContext context) {
    initData();
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text("主页"),
      // ),
      body: _body[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon:getImage(0),title: getTabTitle(0)
          ),
           new BottomNavigationBarItem(
            icon:getImage(1),title: getTabTitle(1)
          ),
           new BottomNavigationBarItem(
            icon:getImage(2),title: getTabTitle(2)
          ),
           new BottomNavigationBarItem(
            icon:getImage(3),title: getTabTitle(3)
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        onTap: (index){
          setState(() {
            _tabIndex = index;   
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './swiper/swiper.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
    debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
 //       title: "toast",
        theme: ThemeData(
          primaryColor: Colors.grey[350]
        ),
        home: new SwiperPage()
      );
    }
}

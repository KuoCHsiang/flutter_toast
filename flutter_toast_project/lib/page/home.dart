import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  var parentContext;
  HomePage(this.parentContext);

  @override
  State<StatefulWidget> createState() {
    return new SwiperPageState(parentContext);
  }
}

class SwiperPageState extends State<HomePage> {

    var parentContext;
  SwiperPageState(this.parentContext);
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width); // 获取设备宽度
    return new Scaffold(
      appBar: new AppBar(
       leading: new Icon(Icons.home),
       title: new Text("港代达人"),
       centerTitle: true,
      ),
      body: new Row(
        children: <Widget>[
          new Container(
              child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.asset("lib/images/banner_1.png",fit: BoxFit.fill);
            },
            itemCount: 3,
            pagination: new SwiperPagination(),
            autoplay: true,
          ),
            height: 150.0,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SwiperPageState();
  }
}

class SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width); // 获取设备宽度
    return new Scaffold(
      appBar: new AppBar(
       leading: new Icon(Icons.home),
       title: new Text("港代达人"),
       centerTitle: true,
      ),
      // body: new Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return new Image.network("http://via.placeholder.com/350x150",
      //         fit: BoxFit.fill);
      //   },
      //   itemCount: 3,
      //   pagination: new SwiperPagination(),
      //   control: new SwiperControl(),
      // ),
      body: new Row(
        children: <Widget>[
          new Container(
              child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network("https://static.lehe.com/higo/feseTT/www/welcome_3/banner_1.png",
              fit: BoxFit.fill);
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

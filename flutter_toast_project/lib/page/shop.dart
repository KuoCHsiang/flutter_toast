import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  var parentContext;
  ShopPage(this.parentContext);
  @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.red
        ),
        home: new Center(
          child: new Text("ok"),
        ),
      );
    }
}
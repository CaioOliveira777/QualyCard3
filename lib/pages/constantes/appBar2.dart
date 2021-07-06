import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarConsts {
  static var appBar2 = AppBar(
    elevation: 1.5,
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.teal[700]),
    title: SizedBox(
      width: 150,
      child: Image.asset('logo-horizontal.png'),
    ),
  );
}

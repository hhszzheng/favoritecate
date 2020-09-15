
import 'package:flutter/material.dart';



class YFAppTheme{

  //1.共有属性
  static const double bodyFontSize = 12;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double bigFontSize = 24;


  //2.普通模式
  static final Color normalTextColors = Colors.red;

  static final ThemeData normalTheme = ThemeData(
      primarySwatch: Colors.pink,
      canvasColor: Color.fromRGBO(255, 254, 222, 1),
      textTheme:TextTheme(
        bodyText1: TextStyle(fontSize: smallFontSize),
        bodyText2: TextStyle(fontSize: normalFontSize),
        subtitle1: TextStyle(fontSize: bodyFontSize),

      ),

      splashColor: Colors.transparent,

  );


  //3.暗黑模式
  static final Color darkTextColors = Colors.green;

  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.green,
      splashColor: Colors.transparent,
      textTheme: TextTheme(bodyText1: TextStyle(fontSize: normalFontSize, color: darkTextColors))
  );

}
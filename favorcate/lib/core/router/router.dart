import 'package:favorcate/ui/pages/main/main.dart';
import 'package:flutter/material.dart';

class YFRouter{

  static final String initialRoute = YFMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes= {
    YFMainScreen.routeName : (ctx)=>YFMainScreen()

  };



  static final RouteFactory generateRoute = (RouteSettings settings){
    return null;
  };

  static final RouteFactory unknownRoute = (settings){
    return null;
  };


}
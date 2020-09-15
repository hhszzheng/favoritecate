import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    YFSizeFit.initialize();

    return MaterialApp(
      title: '美食广场',
      //主题:
      theme:YFAppTheme.normalTheme,
      //路由:
      initialRoute: YFRouter.initialRoute,
      onGenerateRoute: YFRouter.generateRoute,
      onUnknownRoute: YFRouter.unknownRoute,
      routes: YFRouter.routes,
    );
  }
}


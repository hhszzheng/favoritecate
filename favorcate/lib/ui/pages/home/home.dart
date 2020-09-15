import 'package:flutter/material.dart';

import 'home_content.dart';
class YFHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('美食广场'),
      ),
      //抽离取决于 下面的数据哪里用
      body: YFHomeContent()
    );
  }
}

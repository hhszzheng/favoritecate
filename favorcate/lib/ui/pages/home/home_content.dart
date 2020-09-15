import 'package:favorcate/core/model/YFCategoryModel.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/extension/double_extension.dart';
import 'package:favorcate/core/extension/int_extension.dart';


class YFHomeContent extends StatefulWidget {
  @override
  _YFHomeContentState createState() => _YFHomeContentState();
}

class _YFHomeContentState extends State<YFHomeContent> {
  List<YFCategoryModel> _categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //获取数据
    JsonParse.getCategoryData().then((value) {
      setState(() {
        _categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.px,
        childAspectRatio: 1.5,
        mainAxisSpacing: 20.px
      ),
      itemBuilder: (ctx,index){
        return Text(_categories[index].title);
      },
      itemCount: _categories.length,
    );
  }
}

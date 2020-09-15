import 'dart:convert';

import 'package:favorcate/core/model/YFCategoryModel.dart';
import 'package:flutter/services.dart';

class JsonParse{
  static Future<List<YFCategoryModel>> getCategoryData () async {

    //1.加载json文件   json字符串
    final jsonString = await rootBundle.loadString('assets/json/category.json');

    //2.将json字符串 转换成map/list
    final result = json.decode(jsonString);

    //3.映射对象
    final resultList = result['category'];
    List <YFCategoryModel> categories = [];
    for(var json in resultList){
      categories.add(YFCategoryModel.fromJson(json));
    }
    return categories;
  }
}
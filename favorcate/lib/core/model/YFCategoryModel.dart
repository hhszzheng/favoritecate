

class YFCategoryModel {
  String id;
  String title;
  String color;

  YFCategoryModel({this.id, this.title, this.color});

  YFCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}

class MyModel {
  int? id;
  String? title, body;

  MyModel({this.id, this.title, this.body});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(id: json['id'], body: json['body'], title: json['title']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = title;
    data['body'] = body;

    return data;
  }
}

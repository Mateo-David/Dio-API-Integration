class PostModel1 {
  late int userId;
  late int id;
  late String title;
  late String body;

  PostModel1(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  PostModel1.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}

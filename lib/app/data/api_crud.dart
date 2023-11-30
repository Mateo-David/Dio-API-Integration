import 'dart:html';

import 'package:dio/dio.dart';

class APICrudOperation {
  Future<dynamic> getUserMethod(url) {
    return Dio().get(url).then(
      (response) {
        return response;
      },
    );
  }

  postUserMethod(posturl) async {
    return await Dio().post(
      posturl,
      data: {
        "title": "Muneeb Shahid",
        "body": "Fluter Developer",
      },
    );
  }
}

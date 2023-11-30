import 'package:dio/dio.dart';
import 'package:dio_project/app/data/api_crud.dart';
import 'package:dio_project/model/get_user_model/get_user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDataController extends GetxController {
  RxList<PostModel> posts = RxList();
  var url = "https://jsonplaceholder.typicode.com/posts";
  getUserdata() async {
    var response = await APICrudOperation().getUserMethod(url);
    print(response);
    if (response.statusCode == 200) {
      response.data.forEach(
        (element) {
          posts.add(
            PostModel.fromJson(element),
          );
        },
      );
      return posts;
    }
  }
}

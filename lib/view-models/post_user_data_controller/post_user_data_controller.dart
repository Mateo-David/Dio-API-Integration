import 'package:dio_project/app/data/api_crud.dart';
import 'package:dio_project/model/get_user_model/get_user_model.dart';
import 'package:dio_project/model/post_model_one/post_model_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostUserDataController extends GetxController {
  final TextEditingController useridTextEditingController =
      TextEditingController();
  final TextEditingController idTextEditingController = TextEditingController();
  final TextEditingController titleTextEditingController =
      TextEditingController();
  final TextEditingController bodyTextEditingController =
      TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var url = "https://jsonplaceholder.typicode.com/posts";
  var putUrl = "https://jsonplaceholder.typicode.com/posts/1";

  postUserData() async {
    var response = await APICrudOperation().postUserMethod(
      url,
    );
    var responseBody = response.data;
    PostModel postModel = PostModel.fromJson(responseBody);

    print("Data of post user data: ${responseBody}");
    print(response.statusCode.toString());

    return postModel;
  }

  putUserData() async {
    var response = await APICrudOperation().putUserData(putUrl);
    var responseBody = response.data;
    print(responseBody);
    return responseBody;
  }

  patchUserData() async {
    var response = await APICrudOperation().patchUserData(putUrl);
    var responseBody = response.data;
    print(responseBody);
    return responseBody;
  }

  deleteUserData() async {
    var response = await APICrudOperation().deleteUserData(putUrl);
    var responseBody = response.data;
    print(responseBody);
    return responseBody;
  }
}

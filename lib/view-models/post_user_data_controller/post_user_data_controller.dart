import 'package:dio_project/app/data/api_crud.dart';
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

  postUserData() async {
    var response = await APICrudOperation().postUserMethod(url);

    var responseBody = response.data;
    print(responseBody);
    return responseBody;
  }
}

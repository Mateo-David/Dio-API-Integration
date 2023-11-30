import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_project/model/get_user_model/get_user_model.dart';
import 'package:get/get.dart';

class APICrudOperation {
  Future<dynamic> getUserMethod(url) {
    return Dio().get(url).then(
      (response) {
        return response;
      },
    );
  }
}

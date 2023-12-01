import 'package:dio/dio.dart';

import 'package:dio_project/view-models/post_user_data_controller/post_user_data_controller.dart';
import 'package:get/get.dart';

class APICrudOperation {
  PostUserDataController postUserDataController =
      Get.put(PostUserDataController());
  Future<dynamic> getUserMethod(url) {
    return Dio().get(url).then(
      (response) {
        return response;
      },
    );
  }

  postUserMethod<PostModel>(
    posturl,
  ) async {
    return await Dio().post(
      posturl,
      data: {
        "title": postUserDataController.titleTextEditingController.text,
        "userId":
            int.parse(postUserDataController.useridTextEditingController.text)
                .toInt(),
        "id": int.parse(postUserDataController.idTextEditingController.text)
            .toInt(),
        "body": postUserDataController.bodyTextEditingController.text
      },
    );
  }

  putUserData(putUrl) async {
    return await Dio().put(
      putUrl,
      data: {
        "title": "Muneeb Shahid putUserData",
        "body": "Fluter Developer putUserData",
      },
    );
  }

  patchUserData(patchurl) async {
    return await Dio().patch(patchurl, data: {"title": "Muhammad Ali"});
  }

  deleteUserData(deleteUrl) async {
    return await Dio().delete(deleteUrl);
  }
}

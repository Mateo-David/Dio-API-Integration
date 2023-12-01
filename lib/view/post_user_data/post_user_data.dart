import 'package:dio_project/model/post_model_one/post_model_one.dart';
import 'package:dio_project/view-models/post_user_data_controller/post_user_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PostUserData extends StatelessWidget {
  PostModel1? postModel1;
  final PostUserDataController postuserdatacontroller =
      Get.put(PostUserDataController());
  PostUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Post User Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Form(
            key: postuserdatacontroller.formkey,
            child: Column(
              children: [
                TextFormField(
                  controller:
                      postuserdatacontroller.useridTextEditingController,
                  decoration: const InputDecoration(
                    label: Text(
                      "userId",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: postuserdatacontroller.idTextEditingController,
                  decoration: const InputDecoration(
                    label: Text(
                      "id",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: postuserdatacontroller.titleTextEditingController,
                  decoration: const InputDecoration(
                    label: Text(
                      "title",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: postuserdatacontroller.bodyTextEditingController,
                  decoration: const InputDecoration(
                    label: Text(
                      "body",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    postuserdatacontroller.postUserData();

                    // print(postuserdatacontroller.postUserData(
                    //     postuserdatacontroller.useridTextEditingController.text
                    //         .toString(),
                    //     postuserdatacontroller.idTextEditingController.text
                    //         .toString(),
                    //     postuserdatacontroller.titleTextEditingController.text
                    //         .toString(),
                    //     postuserdatacontroller.bodyTextEditingController.text
                    //         .toString()));
                  },
                  child: const Text(
                    "Post Data",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    postuserdatacontroller.putUserData();
                  },
                  child: const Text(
                    "Put Data",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    postuserdatacontroller.patchUserData();
                  },
                  child: const Text(
                    "Patch Data",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    postuserdatacontroller.deleteUserData();
                  },
                  child: const Text(
                    "Delete Data",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

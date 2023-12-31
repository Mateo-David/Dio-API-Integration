import 'package:dio_project/app/data/api_crud.dart';
import 'package:dio_project/model/get_user_model/get_user_model.dart';
import 'package:dio_project/view-models/home%20controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetDataScreen extends StatelessWidget {
  final GetDataController getdatacontroller = Get.put(GetDataController());

  GetDataScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("get User data"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getdatacontroller.getUserdata(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: getdatacontroller.posts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Title",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                getdatacontroller.posts[index].title.toString(),
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Body",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.red),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                getdatacontroller.posts[index].body.toString(),
                                style:const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    '${snapshot.error}',
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  );
                }

                return const CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dio_project/view-models/home%20controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDataScreen extends StatelessWidget {
  const GetDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Home Screen"),
          centerTitle: true,
        ),
        body: GetBuilder<GetDataController>(
            init: GetDataController(),
            builder: (getdatacontroller) {
              return Column(
                children: [
                  FutureBuilder(
                      future: getdatacontroller.getData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            // itemCount: ,
                              itemBuilder: (context, index) {
                            return Column(
                              children: [
                                
                              ],
                            );
                          });
                        } else if (snapshot.hasError) {}
                        return Container();
                      })
                ],
              );
            }));
  }
}

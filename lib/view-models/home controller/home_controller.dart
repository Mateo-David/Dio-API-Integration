import 'package:dio/dio.dart';
import 'package:get/get.dart';

class GetDataController extends GetxController {
  Future getData() async {
    try {
      var response = await Dio()
          .get("https://protocoderspoint.com/jsondata/superheros.json");
      print(response);
      if (response.statusCode==200) {
        
      } else {
        
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

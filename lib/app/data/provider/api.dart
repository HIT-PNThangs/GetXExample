import 'dart:convert';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      } else
        print('erro');
    } catch (_) {}
  }

  // getId(id) async {
  //   try {
  //     var response = await httpClient.get('baseUrlid');
  //     if (response.statusCode == 200) {
  //     } else
  //       print('erro - get');
  //   } catch (_) {}
  // }
}

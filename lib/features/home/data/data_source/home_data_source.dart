import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mechine_test_noviindus/features/home/data/model/home_model.dart';


// class HomeDataSource {
//   final String baseUrl = 'https://yourapiurl.com'; // replace with your actual base url

//   Future<HomeModel> getHomeData() async {
//     final url = Uri.parse('$baseUrl/home'); // or the correct endpoint like 'home_api'
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       return HomeModel.fromJson(jsonData);
//     } else {
//       throw Exception('Failed to load home data: ${response.statusCode}');
//     }
//   }
//    Future<HomeModel> getCategories() async {
//     final url = Uri.parse('$baseUrl/category_list'); // 🔁 correct API endpoint
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final jsonBody = jsonDecode(response.body);
//       return HomeModel.fromJson(jsonBody);
//     } else {
//       throw Exception('Failed to load categories (status: ${response.statusCode})');
//     }
//   }
// }

abstract class HomeDataSource {
  Future<HomeModel> getHomeData();
  Future<HomeModel> getCategories();
}

class HomeDataSourceImpl implements HomeDataSource {
  final String baseUrl;
  final http.Client client;

  HomeDataSourceImpl( {required this.baseUrl, required this.client});
  

  @override
  Future<HomeModel> getHomeData() async {
    final url = Uri.parse('$baseUrl/home');
    final response = await client.get(url);

    if (response.statusCode == 200 || response.statusCode == 202) {
      final jsonData = jsonDecode(response.body);
      return HomeModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load home data: ${response.statusCode}');
    }
  }

  @override
  Future<HomeModel> getCategories() async {
    final url = Uri.parse('$baseUrl/category_list');
    final response = await client.get(url);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return HomeModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load categories: ${response.statusCode}');
    }
  }
}


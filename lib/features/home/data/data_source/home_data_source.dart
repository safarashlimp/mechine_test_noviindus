import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mechine_test_noviindus/features/home/data/model/home_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHomeData();
  Future<HomeModel> getCategories();
}

class HomeDataSourceImpl implements HomeDataSource {
  final String baseUrl;
  final http.Client client;

  HomeDataSourceImpl({required this.baseUrl, required this.client});

  @override
  Future<HomeModel> getHomeData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('access_token');

    if (token == null || token.isEmpty) {
      throw Exception("Access token not found. Please login again.");
    }
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

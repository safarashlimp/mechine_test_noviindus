import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/entities/my_feed_entity.dart';
import '../../domain/repository/my_feed_repository.dart';

class MyFeedRepositoryImpl implements MyFeedRepository {
  final String baseUrl;
  final http.Client client;

  MyFeedRepositoryImpl({required this.baseUrl, required this.client});

  @override
  Future<List<MyFeedEntity>> getMyFeed({
    required String token,
    required int page,
  }) async {
    final url = Uri.parse('$baseUrl/my_feed?page=$page');
    final response = await client.get(
      url,
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List list = data['results'];
      return list.map((e) => MyFeedEntity.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load feeds (${response.statusCode})");
    }
  }
}

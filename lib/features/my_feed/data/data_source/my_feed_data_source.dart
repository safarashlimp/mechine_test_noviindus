import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/my_feed_entity.dart';

abstract class MyFeedDataSource {
  Future<List<MyFeedEntity>> getMyFeeds({required String token, int page});
}

class MyFeedDataSourceImpl implements MyFeedDataSource {
  final String baseUrl;
  final http.Client client;

  MyFeedDataSourceImpl({required this.baseUrl, required this.client});

  @override
  Future<List<MyFeedEntity>> getMyFeeds({
    required String token,
    int page = 1,
  }) async {
    final url = Uri.parse('$baseUrl/my_feed?page=$page');
    final response = await client.get(
      url,
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200 || response.statusCode == 202) {
      final Map<String, dynamic> decoded = jsonDecode(response.body);

      final List<dynamic> jsonData = decoded['results'] ?? [];
      if (jsonData.isNotEmpty) {
        print('🟢 First feed item: ${jsonData.first}');
      }

      return jsonData.map((item) {
        return MyFeedEntity(
          id: item['id'] ?? 0,

          video: item['video'] != null ? item['video'].toString() : '',

          image: item['image'] != null
              ? (item['image'] is String
                    ? item['image']
                    : (item['image']['url']?.toString() ?? ''))
              : '',

          description: item['description']?.toString() ?? '',

          category: item['category']?.toString() ?? '',
        );
      }).toList();
    } else {
      throw Exception('Failed to fetch feeds: ${response.statusCode}');
    }
  }
}

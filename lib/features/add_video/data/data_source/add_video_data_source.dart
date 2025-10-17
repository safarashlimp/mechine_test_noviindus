import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../domain/entities/add_video_entity.dart';

abstract class AddVideoDataSource {
  Future<void> uploadVideo(VideoEntity video, String token);
}

class AddVideoDataSourceImpl implements AddVideoDataSource {
  final String baseUrl;
  final http.Client client;

  AddVideoDataSourceImpl({required this.baseUrl, required this.client});

  @override
  Future<void> uploadVideo(VideoEntity video, String token) async {
    final url = Uri.parse('$baseUrl/my_feed');

    final request = http.MultipartRequest('POST', url);

    request.headers['Authorization'] = 'Bearer $token';

    request.fields['desc'] = video.description;
    request.fields['category'] = jsonEncode(video.categories);

    request.files.add(
      await http.MultipartFile.fromPath('video', video.videoPath),
    );
    request.files.add(
      await http.MultipartFile.fromPath('image', video.thumbnailPath),
    );

    final response = await request.send();

    if (response.statusCode == 200 || response.statusCode == 202) {
      print("✅ Upload successful");
    } else {
      final responseBody = await response.stream.bytesToString();
      throw Exception("Upload failed: ${response.statusCode} → $responseBody");
    }
  }
}

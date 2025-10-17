import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:mechine_test_noviindus/features/add_video/domain/repository/add_video_repository.dart';
import 'package:mechine_test_noviindus/features/add_video/presentation/bloc/add_video_bloc.dart';
import 'package:mechine_test_noviindus/features/add_video/presentation/view/add_video.dart';
import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';
import 'package:mechine_test_noviindus/util/service_locator/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_bloc.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_event.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  int? _playingIndex;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const FetchHomeData());
  }

  @override
  void dispose() {
    _disposeVideo();
    super.dispose();
  }

  void _disposeVideo() {
    _chewieController?.dispose();
    _videoController?.dispose();
    _chewieController = null;
    _videoController = null;
  }

  Future<void> _playVideo(String url, int index) async {
    if (_playingIndex == index) return; // same video, do nothing
    _disposeVideo();

    final controller = VideoPlayerController.networkUrl(Uri.parse(url));
    await controller.initialize();

    final chewie = ChewieController(
      videoPlayerController: controller,
      autoPlay: true,
      looping: false,
      allowFullScreen: true,
      allowMuting: true,
      aspectRatio: controller.value.aspectRatio,
      showControls: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.white,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.white24,
      ),
    );

    setState(() {
      _videoController = controller;
      _chewieController = chewie;
      _playingIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: Text(
                  'Initializing...',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(color: Colors.red),
              ),
              loaded: (data) => _buildHomeUI(context, data),
              error: (message) => Center(
                child: Text(
                  "Error: $message",
                  style: const TextStyle(color: Colors.redAccent),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHomeUI(BuildContext context, HomeEntity data) {
    final categories = data.categories;
    final feeds = data.feeds;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () async {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString('access_token') ?? '';

          // ✅ Pass categories from loaded HomeEntity
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider(
                create: (_) =>
                    AddVideoBloc(repository: getIt<VideoRepository>()),
                child: AddVideoPage(token: token, categories: categories),
              ),
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 16),

            // --- Category Chips ---
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return _categoryChip(category.title, isSelected: index == 0);
                },
              ),
            ),
            const SizedBox(height: 20),

            // --- Feed List ---
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: feeds.length,
              itemBuilder: (context, index) {
                final feed = feeds[index];
                return GestureDetector(
                  onTap: () => _playVideo(feed.video, index),
                  child: _videoCard(
                    name: feed.user.name,
                    subject: feed.description,
                    thumbnail: feed.image,
                    profile:
                        feed.user.image ??
                        'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                    index: index,
                    feedUrl: feed.video,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryChip(String label, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red : Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey.shade400,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _videoCard({
    required String name,
    required String subject,
    required String thumbnail,
    required String profile,
    required int index,
    required String feedUrl,
  }) {
    final isPlaying = _playingIndex == index;

    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Video or Thumbnail ---
          AspectRatio(
            aspectRatio: isPlaying && _videoController != null
                ? _videoController!.value.aspectRatio
                : 16 / 9,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: isPlaying && _chewieController != null
                  ? Chewie(controller: _chewieController!)
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(
                          thumbnail,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                            size: 40,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
            ),
          ),

          // --- Info Section ---
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profile),
                  radius: 18,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        subject,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

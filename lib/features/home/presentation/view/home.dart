import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_bloc.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_event.dart';
import 'package:mechine_test_noviindus/features/home/presentation/bloc/home_state.dart';
import '../../domain/entities/home_entitiy.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.read<HomeBloc>()..add(const FetchHomeData()),
      child: const HomePageContent(),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Initializing...')),
              loading: () =>
                  const Center(child: CircularProgressIndicator(color: Colors.red)),
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

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Header ---
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/user.jpg'),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.notifications_none, color: Colors.white),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          // --- Categories Scroll ---
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

          // --- Feed List / Video Cards ---
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: feeds.length,
            itemBuilder: (context, index) {
              final feed = feeds[index];
              return _videoCard(
                name: feed.user.name,
                subject: feed.description,
                thumbnail: feed.image,
                profile: feed.user.image ??
                    'https://cdn-icons-png.flaticon.com/512/149/149071.png',
              );
            },
          ),
           Positioned(
                bottom: 10,
                right: 10,
                child: InkWell(
                  onTap: () {
//Navigator.push(context, MaterialPageRoute(builder: (_) => AddVideoPage()));
                    // Handle add button tap
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ),
            ],
        
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
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  thumbnail,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, __) =>
                      const Icon(Icons.broken_image, color: Colors.grey, size: 50),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.play_arrow, color: Colors.white, size: 36),
              ),
            ],
          ),

          // Info Section
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
                            fontSize: 14),
                      ),
                      Text(
                        subject,
                        style: const TextStyle(
                            color: Colors.grey, fontSize: 12, height: 1.3),
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

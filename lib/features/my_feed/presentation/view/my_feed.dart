import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechine_test_noviindus/features/add_video/presentation/view/add_video.dart';
import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';
import '../bloc/my_feed_bloc.dart';
import '../bloc/my_feed_event.dart';
import '../bloc/my_feed_state.dart';
import '../../domain/entities/my_feed_entity.dart';

class MyFeedPage extends StatefulWidget {
  final String token;
  final List<CategoryEntity>? categories;

  const MyFeedPage({super.key, required this.token, this.categories});

  @override
  State<MyFeedPage> createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {
  @override
  void initState() {
    super.initState();

    context.read<MyFeedBloc>().add(FetchMyFeedEvent(token: widget.token));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Feed")),
      body: BlocBuilder<MyFeedBloc, MyFeedState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Error) {
            return Center(child: Text("Error: ${state.failure}"));
          }

          if (state is Loaded) {
            final feeds = state.feeds;

            if (feeds.isEmpty) {
              return const Center(child: Text("No feeds yet"));
            }

            return ListView.builder(
              itemCount: feeds.length,
              itemBuilder: (context, index) {
                final MyFeedEntity feed = feeds[index];

                // ✅ Safe null handling
                final video = feed.video.isNotEmpty ? feed.video : 'N/A';
                final image = feed.image.isNotEmpty ? feed.image : '';
                final description = feed.description.isNotEmpty
                    ? feed.description
                    : 'No description';
                final category = feed.category.isNotEmpty
                    ? feed.category
                    : 'Uncategorized';

                return Card(
                  color: Colors.grey.shade900,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: image.isNotEmpty
                        ? Image.network(
                            image,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          )
                        : const Icon(Icons.image, color: Colors.white),
                    title: Text(
                      description,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      category,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      // Optional: play video or open detail page
                    },
                  ),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: widget.categories != null
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddVideoPage(
                      token: widget.token,
                      categories: widget.categories!,
                    ),
                  ),
                );
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}

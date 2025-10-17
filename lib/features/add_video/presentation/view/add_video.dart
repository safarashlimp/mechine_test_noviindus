import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mechine_test_noviindus/features/add_video/presentation/bloc/add_video_bloc.dart'
    as bloc;
import 'package:mechine_test_noviindus/features/home/domain/entities/home_entitiy.dart';
import 'package:mechine_test_noviindus/features/my_feed/presentation/view/my_feed.dart';
import '../../domain/entities/add_video_entity.dart';
import '../bloc/add_video_state.dart';

class AddVideoPage extends StatefulWidget {
  final String token;
  final List<CategoryEntity> categories;

  const AddVideoPage({
    super.key,
    required this.token,
    required this.categories,
  });

  @override
  State<AddVideoPage> createState() => _AddVideoPageState();
}

class _AddVideoPageState extends State<AddVideoPage> {
  final TextEditingController _descController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  File? _videoFile;
  File? _thumbnailFile;
  List<int> _selectedCategories = [];
  double _uploadProgress = 0;

  // --- Pick video from gallery ---
  Future<void> _pickVideo() async {
    final pickedVideo = await _picker.pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(minutes: 5),
    );

    if (pickedVideo != null && pickedVideo.path.endsWith(".mp4")) {
      setState(() => _videoFile = File(pickedVideo.path));
    } else if (pickedVideo != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Only MP4 videos allowed!")));
    }
  }

  // --- Pick thumbnail image ---
  Future<void> _pickThumbnail() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() => _thumbnailFile = File(pickedImage.path));
    }
  }

  // --- Trigger upload ---
  void _submitVideo() {
    if (_videoFile == null ||
        _thumbnailFile == null ||
        _descController.text.isEmpty ||
        _selectedCategories.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("All fields are required!")));
      return;
    }

    final videoEntity = VideoEntity(
      description: _descController.text,
      categories: _selectedCategories,
      videoPath: _videoFile!.path,
      thumbnailPath: _thumbnailFile!.path,
    );

    // ✅ Trigger upload event only
    context.read<bloc.AddVideoBloc>().add(
      bloc.UploadVideoEvent(video: videoEntity, token: widget.token),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        title: const Text('Add Video'),
        backgroundColor: Colors.black,
      ),
      body: BlocConsumer<bloc.AddVideoBloc, AddVideoState>(
        listener: (context, state) {
          if (state is AddVideoSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Video uploaded successfully!")),
            );

            // ✅ Navigate to MyFeedPage on success
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => MyFeedPage(token: widget.token),
              ),
            );
          } else if (state is AddVideoError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          if (state is AddVideoLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Uploading Video...",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  LinearProgressIndicator(
                    value: _uploadProgress,
                    color: Colors.red,
                  ),
                ],
              ),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Video Picker ---
                GestureDetector(
                  onTap: _pickVideo,
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade900,
                    ),
                    child: _videoFile == null
                        ? const Center(
                            child: Icon(
                              Icons.video_library_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          )
                        : const Center(
                            child: Text(
                              "Video selected",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 16),

                // --- Thumbnail Picker ---
                GestureDetector(
                  onTap: _pickThumbnail,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade900,
                    ),
                    child: _thumbnailFile == null
                        ? const Center(
                            child: Icon(
                              Icons.image_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          )
                        : const Center(
                            child: Text(
                              "Thumbnail selected",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 16),

                // --- Description ---
                TextField(
                  controller: _descController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Description",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),

                // --- Categories Selection ---
                const Text(
                  "Select Categories",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: List.generate(widget.categories.length, (index) {
                    final cat = widget.categories[index];
                    final isSelected = _selectedCategories.contains(
                      index,
                    ); // using index as ID

                    return ChoiceChip(
                      label: Text(
                        cat.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedCategories.add(index);
                          } else {
                            _selectedCategories.remove(index);
                          }
                        });
                      },
                      selectedColor: Colors.red,
                      backgroundColor: Colors.grey.shade800,
                    );
                  }),
                ),

                const SizedBox(height: 24),

                // --- Upload Button ---
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitVideo,
                    child: const Text("Upload Video"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

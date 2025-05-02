import 'package:flutter/material.dart';
import 'package:tiktok/constants/app_images.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/theme/theme.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List discoveryData = [
    {
      'imagePath': AppImages.thumbnailOne,
    },
    {
      'imagePath': AppImages.thumbnailTwo,
    },
    {
      'imagePath': AppImages.thumbnailThree,
    },
    {
      'imagePath': AppImages.thumbnailFour,
    },
    {
      'imagePath': AppImages.thumbnailFive,
    },
    {
      'imagePath': AppImages.thumbnailSix,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: context.screenHeight * .06,
          decoration: BoxDecoration(
            color: kTikTokGrey.withValues(alpha: .5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: kTikTokGrey),
              hintText: 'Search',
              hintStyle: TextStyle(color: kTikTokGrey),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemCount: discoveryData.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  discoveryData[index]['imagePath'],
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  '#trending${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

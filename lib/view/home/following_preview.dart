import 'package:flutter/material.dart';
import 'package:tiktok/extansion/format_extansion.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:tiktok/models/video_model.dart';
import 'package:tiktok/theme.dart';
import '../../widgets/action_button_widget.dart';

class FollowingPreview extends StatefulWidget {
  const FollowingPreview({super.key});

  @override
  State<FollowingPreview> createState() => _FollowingPreviewState();
}

class _FollowingPreviewState extends State<FollowingPreview> {
  // Dummy data list
  final List<VideoModel> dummyVideos = [
    VideoModel(
      videoId: '1',
      userId: '123',
      caption: 'Peshawar zulmi',
      videoUrl: 'https://youtube.com/shorts/wRi3inp5PC8?si=E2WxzaSzxzfIuf47',
      thumbnailUrl: 'https://example.com/thumbnail1.jpg',
      likesCount: 23300,
      commentsCount: 2000,
      sharesCount: 782,
      createdAt: '24-3-2024',
      soundId: 'abc',
      soundName: 'Original Sound - PeshawarZalmi',
      uploadUsername: 'cricket_lover',
      uploadUserProfile:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScdK0kKJ1NJwf6n9RPOhlld0KhZolu0siYaw&s',
      isUserVerified: true,
      hashtags: ['Nature', 'viral', 'foryou'],
      privacy: 'private',
      isLiked: true,
    ),
    VideoModel(
      videoId: '2',
      userId: '456',
      caption: 'Beautiful mountains',
      videoUrl: 'https://youtube.com/shorts/6uhGjbiWsZA?si=ZjB28BwCVhRKfOpg',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
      likesCount: 15000,
      commentsCount: 1200,
      sharesCount: 500,
      createdAt: '25-3-2024',
      soundId: 'def',
      soundName: 'Epic Mountain Music',
      uploadUsername: 'travel_enthusiast',
      uploadUserProfile:
          'https://img.freepik.com/premium-photo/travel-traveling-symbolic-picture-vacation-background-15_1032298-2376.jpg?semt=ais_hybrid&w=740',
      isUserVerified: false,
      hashtags: ['Mountains', 'travel', 'nature'],
      privacy: 'public',
      isLiked: false,
    ),
    VideoModel(
      videoId: '3',
      userId: '789',
      caption: 'City life at night',
      videoUrl: 'https://youtube.com/shorts/1QiXjabU6qA?si=pur0iMX5fjqGX_8c',
      thumbnailUrl: 'https://images.unsplash.com/photo-1514565131-fce0801e5785',
      likesCount: 32000,
      commentsCount: 2500,
      sharesCount: 1200,
      createdAt: '26-3-2024',
      soundId: 'ghi',
      soundName: 'City Vibes Remix',
      uploadUsername: 'urban_explorer',
      uploadUserProfile:
          'https://www.ootlah.com/wp-content/uploads/2018/09/1-2.jpg',
      isUserVerified: true,
      hashtags: ['City', 'night', 'lights'],
      privacy: 'public',
      isLiked: false,
    ),
    VideoModel(
      videoId: '4',
      userId: '101',
      caption: 'Cooking delicious pasta',
      videoUrl: 'https://youtube.com/shorts/8N_6FOVswXk?si=wLZxvdUU7sJw5BFN',
      thumbnailUrl: 'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb',
      likesCount: 45000,
      commentsCount: 3200,
      sharesCount: 1800,
      createdAt: '27-3-2024',
      soundId: 'jkl',
      soundName: 'Italian Kitchen Sounds',
      uploadUsername: 'chef_amna',
      uploadUserProfile:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG5G1CON6J1bbgsIG0THBwcpA1y5HUqsQ9IA&s',
      isUserVerified: true,
      hashtags: ['food', 'cooking', 'pasta'],
      privacy: 'public',
      isLiked: true,
    ),
    VideoModel(
      videoId: '5',
      userId: '112',
      caption: 'Morning workout routine',
      videoUrl: 'https://youtube.com/shorts/vZdKQsPxTSg?si=shJ0Fv8lh4M66a2L',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b',
      likesCount: 28000,
      commentsCount: 1500,
      sharesCount: 900,
      createdAt: '28-3-2024',
      soundId: 'mno',
      soundName: 'Workout Motivation Mix',
      uploadUsername: 'fitness_guru',
      uploadUserProfile:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9uxfYBohEL12hWed8EIz6D3g_wEHWJWfdsA&s',
      isUserVerified: false,
      hashtags: ['fitness', 'workout', 'health'],
      privacy: 'public',
      isLiked: false,
    ),
  ];
  // Controller for PageView
  late PageController _pageController;

  // Video controllers
  late List<VideoPlayerController> _videoControllers;
  late List<ChewieController> _chewieControllers;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Initialize video controllers
    _videoControllers = dummyVideos.map((video) {
      return VideoPlayerController.network(video.videoUrl);
    }).toList();

    // Initialize Chewie controllers
    _chewieControllers = dummyVideos.asMap().entries.map((entry) {
      final index = entry.key;
      return ChewieController(
          videoPlayerController: _videoControllers[index],
          autoPlay: index == 0, // Autoplay first video
          looping: true,
          showControls:
              false, // Hide default controls for TikTok-like experience
          allowFullScreen: true,
          materialProgressColors: ChewieProgressColors(
            playedColor: kTikTokRed,
            handleColor: kTikTokRed,
            backgroundColor: Colors.grey,
            bufferedColor: Colors.grey.withOpacity(0.5),
          ));
    }).toList();

    // Prepare all videos
    for (var controller in _videoControllers) {
      controller.initialize().then((_) {
        if (mounted) setState(() {});
      });
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    for (var controller in _chewieControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: dummyVideos.length,
        onPageChanged: (index) {
          _chewieControllers[index == 0 ? dummyVideos.length - 1 : index - 1]
              .pause();

          _chewieControllers[index].play();
        },
        itemBuilder: (context, index) {
          final video = dummyVideos[index];

          return Stack(
            children: [
              Container(
                color: Colors.black,
                child: Center(
                  child: _chewieControllers[index]
                          .videoPlayerController
                          .value
                          .isInitialized
                      ? Chewie(controller: _chewieControllers[index])
                      : Container(
                          color: kTikTokDarkGrey,
                          child: Center(
                            child: CircularProgressIndicator(color: kTikTokRed),
                          ),
                        ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 15,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: kTikTokWhite,
                      backgroundImage: NetworkImage(video.uploadUserProfile),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {});
                      },
                      child: BuildActionButton(
                          Icons.favorite,
                          video.likesCount.formatCount(),
                          video.isLiked == true ? kTikTokRed : kTikTokWhite),
                    ),
                    const SizedBox(height: 20),
                    BuildActionButton(Icons.comment,
                        video.commentsCount.formatCount(), kTikTokWhite),
                    const SizedBox(height: 20),
                    BuildActionButton(Icons.share, 'Share', kTikTokWhite),
                    const SizedBox(height: 20),
                    BuildActionButton(Icons.music_note, '', kTikTokWhite),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        Text(video.uploadUsername, style: tiktokUsernameStyle),
                        video.isUserVerified
                            ? CircleAvatar(
                                radius: 6,
                                backgroundColor: kTikTokGreen,
                                child: Icon(
                                  Icons.check,
                                  size: 10,
                                  color: kTikTokWhite,
                                ),
                              )
                            : SizedBox()
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${video.caption} #${video.hashtags[0]}', // Just show first hashtag for simplicity
                      style: tiktokVideoInfoStyle,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.music_note, size: 16, color: kTikTokWhite),
                        const SizedBox(width: 8),
                        Text('Original Sound - ${video.soundName ?? ''}',
                            style: tiktokCaptionStyle),
                      ],
                    ),
                  ],
                ),
              ),
              if (!_chewieControllers[index].isPlaying)
                Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 60,
                    color: kTikTokWhite.withOpacity(0.8),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

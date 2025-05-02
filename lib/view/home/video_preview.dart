import 'package:flutter/material.dart';
import 'package:tiktok/constants/app_images.dart';
import 'package:tiktok/extansion/format_extansion.dart';
import 'package:tiktok/extansion/mediaquery_extension.dart';
import 'package:tiktok/models/comments_model.dart';
import 'package:tiktok/models/video_model.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:tiktok/theme/theme.dart';
import 'widgets/action_button_widget.dart';

class VideoPreview extends StatefulWidget {
  final List<CommentsModel> commentsModel;
  final List<VideoModel> videoModel;
  const VideoPreview(
      {super.key, required this.commentsModel, required this.videoModel});

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  // Dummy data list
  final TextEditingController commentController = TextEditingController();

  late PageController _pageController;

  late List<VideoPlayerController> _videoControllers;
  late List<ChewieController> _chewieControllers;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    _videoControllers = widget.videoModel.map((video) {
      return VideoPlayerController.asset(video.videoUrl);
    }).toList();

    _chewieControllers = widget.videoModel.asMap().entries.map((entry) {
      final index = entry.key;
      return ChewieController(
          videoPlayerController: _videoControllers[index],
          autoPlay: index == 0,
          looping: true,
          showControls: false,
          allowFullScreen: true,
          materialProgressColors: ChewieProgressColors(
            playedColor: kTikTokRed,
            handleColor: kTikTokRed,
            backgroundColor: kTikTokGrey,
            bufferedColor: kTikTokGrey.withValues(alpha: 0.5),
          ));
    }).toList();

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

  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: widget.videoModel.length,
        onPageChanged: (index) {
          _chewieControllers[
                  index == 0 ? widget.videoModel.length - 1 : index - 1]
              .pause();

          _chewieControllers[index].play();
        },
        itemBuilder: (context, index) {
          final video = widget.videoModel[index];

          return Stack(
            children: [
              Container(
                color: kTikTokBlack,
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
                  spacing: context.screenHeight * .03,
                  children: [
                    CircleAvatar(
                      backgroundColor: kTikTokWhite,
                      backgroundImage: AssetImage(video.uploadUserProfile),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: buildActionButton(
                        Icons.favorite,
                        video.likesCount.formatCount(),
                        isLiked == true ? kTikTokRed : kTikTokWhite,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          _showBottomSheet(context, widget.commentsModel),
                      child: buildActionButton(Icons.comment,
                          video.commentsCount.formatCount(), kTikTokWhite),
                    ),
                    buildActionButton(Icons.share, 'Share', kTikTokWhite),
                    buildActionButton(Icons.music_note, '', kTikTokWhite),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                bottom: 20,
                child: Column(
                  spacing: context.screenHeight * .01,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: context.screenWidth * .02,
                      children: [
                        Text(
                          video.uploadUsername,
                        ),
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
                    Text(
                      '${video.caption} #${video.hashtags[0]}',
                      style: tiktokVideoInfoStyle,
                    ),
                    Row(
                      children: [
                        Icon(Icons.music_note, size: 16, color: kTikTokWhite),
                        SizedBox(width: context.screenWidth * .01),
                        SizedBox(
                          width: context.screenWidth * .75,
                          child: Text(
                              overflow: TextOverflow.ellipsis,
                              'Original Sound - ${video.soundName ?? ''}',
                              style: tiktokCaptionStyle),
                        ),
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
                    color: kTikTokWhite.withValues(alpha: .8),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  void _showBottomSheet(
      BuildContext context, List<CommentsModel> commentModel) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Comments',
                      style: TextStyle(
                        color: kTikTokBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: kTikTokBlack),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: commentModel.length,
                  itemBuilder: (context, index) {
                    final comment = commentModel[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(comment.userImage),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  comment.username,
                                  style: TextStyle(
                                    color: kTikTokBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  comment.text,
                                  style: TextStyle(
                                    color: kTikTokGrey,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      comment.time,
                                      style: TextStyle(
                                        color: kTikTokGrey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          comment.isLiked = !comment.isLiked;
                                          if (comment.isLiked) {
                                            comment.likes++;
                                          } else {
                                            comment.likes--;
                                          }
                                        });
                                      },
                                      child: Text(
                                        'reply',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              comment.isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: comment.isLiked ? kTikTokRed : kTikTokGrey,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                comment.isLiked = !comment.isLiked;
                                if (comment.isLiked) {
                                  comment.likes++;
                                } else {
                                  comment.likes--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: commentController,
                        decoration: InputDecoration(
                          hintText: 'Add a comment...',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: kTikTokWhite,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                        style: TextStyle(color: kTikTokWhite),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send, color: kTikTokRed),
                      onPressed: () {
                        if (commentController.text.isNotEmpty) {
                          setState(() {
                            commentModel.add(CommentsModel(
                              username: 'You',
                              text: commentController.text,
                              time: 'Just now',
                              likes: 0,
                              isLiked: false,
                              userImage: AppImages.dummyProfile,
                            ));
                            commentController.clear();
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

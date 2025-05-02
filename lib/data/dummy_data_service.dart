import 'package:tiktok/constants/app_images.dart';
import 'package:tiktok/models/chat_model.dart';
import 'package:tiktok/models/message_model.dart';
import 'package:tiktok/models/story_model.dart';
import 'package:tiktok/models/video_model.dart';

import '../constants/app_videos.dart';
import '../models/comments_model.dart';

class DummyDataService {
  List<VideoModel> dummyVideos = [
    VideoModel(
      videoId: '1',
      userId: '123',
      caption: 'Mufasa animated video',
      videoUrl: AppVideos.dummyVideoMufasa,
      thumbnailUrl: 'https://example.com/thumbnail1.jpg',
      likesCount: 23300,
      commentsCount: 2000,
      sharesCount: 782,
      createdAt: '24-3-2024',
      soundId: 'abc',
      soundName: 'Original Sound - Mufasa the great',
      uploadUsername: 'MovieManiaClips',
      uploadUserProfile: AppImages.dummyUserMovies,
      isUserVerified: true,
      hashtags: ['Mufasa', 'movies', 'foryou'],
      privacy: 'public',
      isLiked: true,
    ),
    VideoModel(
      videoId: '2',
      userId: '456',
      caption: 'Animation movie',
      videoUrl: AppVideos.dummyVideoAditonya,
      thumbnailUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
      likesCount: 15000,
      commentsCount: 1200,
      sharesCount: 500,
      createdAt: '25-3-2024',
      soundId: 'def',
      soundName: 'Epic Mountain Music',
      uploadUsername: 'SillyToonLand',
      uploadUserProfile: AppImages.dummyUserCartoon,
      isUserVerified: false,
      hashtags: ['Animation', '4k', 'HDR'],
      privacy: 'public',
      isLiked: false,
    ),
  ];

  final List<CommentsModel> comments = <CommentsModel>[
    CommentsModel(
        username: 'Ali',
        text: 'this is dummy comment',
        time: '3h',
        likes: 34,
        isLiked: true,
        userImage: AppImages.dummyProfile),
    CommentsModel(
        username: 'Saqib',
        text: 'this video is awesome',
        time: '11h',
        likes: 45,
        isLiked: false,
        userImage: AppImages.dummyProfile),
    CommentsModel(
        username: 'John',
        text: 'nice content!',
        time: '54m',
        likes: 12,
        isLiked: true,
        userImage: AppImages.dummyProfile),
    CommentsModel(
        username: 'Emma',
        text: 'keep it up!',
        time: '1h',
        likes: 78,
        isLiked: false,
        userImage: AppImages.dummyProfile),
    CommentsModel(
        username: 'Mike',
        text: 'loved this video',
        time: '9h',
        likes: 23,
        isLiked: true,
        userImage: AppImages.dummyProfile),
  ];

  final List<Message> messages = [
    Message(
      sender: 'user123',
      text: 'Hey! Love your videos! 😍',
      time: '10:30 AM',
      isMe: false,
    ),
    Message(
      sender: 'you',
      text: 'Thanks so much! 🙏',
      time: '10:31 AM',
      isMe: true,
    ),
    Message(
      sender: 'user123',
      text: 'How do you edit your videos? They look so professional!',
      time: '10:32 AM',
      isMe: false,
    ),
    Message(
      sender: 'you',
      text: 'I use CapCut for most edits. Want me to send you some tips?',
      time: '10:33 AM',
      isMe: true,
    ),
    Message(
      sender: 'user123',
      text: 'Yes please! That would be amazing!',
      time: '10:35 AM',
      isMe: false,
    ),
  ];

// List of stories
  final List<StoryModel> stories = [
    StoryModel(
      image: AppImages.dummyProfile,
      title: 'Your Story',
    ),
    StoryModel(
      image: AppImages.dummyUserCartoon,
      title: 'SillyToonLand',
    ),
    StoryModel(
      image: AppImages.dummyUserMovies,
      title: 'MovieManiaClips',
    ),
    StoryModel(
      image: AppImages.dummyUserCartoon,
      title: 'SillyToonLand',
    ),
    StoryModel(
      image: AppImages.dummyUserMovies,
      title: 'MovieManiaClips',
    ),
  ];

// List of chats
  final List<ChatModel> chats = [
    ChatModel(
      chatUserName: 'Ali Raza',
      subtitle: 'Sent 4h ago',
      profilePic: AppImages.dummyProfile,
    ),
    ChatModel(
      chatUserName: 'Arif Ali',
      subtitle: 'Sent 4h ago',
      profilePic: AppImages.dummyProfile,
    ),
    ChatModel(
      chatUserName: 'Ghulam Qadir',
      subtitle: 'Sent 4h ago',
      profilePic: AppImages.dummyProfile,
    ),
    ChatModel(
      chatUserName: 'Majid Ali',
      subtitle: 'Sent 4h ago',
      profilePic: AppImages.dummyProfile,
    ),
    ChatModel(
      chatUserName: 'Zulqarnian',
      subtitle: 'Sent 4h ago',
      profilePic: AppImages.dummyProfile,
    ),
  ];
}

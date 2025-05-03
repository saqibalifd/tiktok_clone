import 'package:tiktok/models/chat_model.dart';
import 'package:tiktok/models/message_model.dart';
import 'package:tiktok/models/story_model.dart';
import 'package:tiktok/models/video_model.dart';
import '../models/comments_model.dart';

class DummyDataService {
  List<VideoModel> dummyVideos = [
    VideoModel(
      videoId: '1',
      userId: '123',
      caption: 'Mufasa animated video - The Lion King',
      videoUrl: 'assets/videos/mufasa.mp4',
      thumbnailUrl: 'https://example.com/lionking_thumbnail.jpg',
      likesCount: 23300,
      commentsCount: 2000,
      sharesCount: 782,
      createdAt: '24-3-2024',
      soundId: 'abc123',
      soundName: 'Circle of Life - The Lion King OST',
      uploadUsername: 'DisneyClips',
      uploadUserProfile: 'assets/images/userProfile1.jpg',
      isUserVerified: true,
      hashtags: ['Mufasa', 'LionKing', 'Disney', 'ClassicAnimation'],
      privacy: 'public',
      isLiked: true,
    ),
    VideoModel(
      videoId: '2',
      userId: '456',
      caption: 'Spider-Man: Across the Spider-Verse clip',
      videoUrl: 'assets/videos/aditonya.mp4',
      thumbnailUrl: 'https://example.com/spiderverse_thumbnail.jpg',
      likesCount: 18500,
      commentsCount: 3200,
      sharesCount: 1500,
      createdAt: '25-3-2024',
      soundId: 'def456',
      soundName: 'Sunflower - Post Malone, Swae Lee',
      uploadUsername: 'SonyAnimation',
      uploadUserProfile: 'assets/images/userProfile2.jpg',
      isUserVerified: true,
      hashtags: ['SpiderMan', 'SpiderVerse', 'SonyAnimation', 'OscarWinner'],
      privacy: 'public',
      isLiked: false,
    ),
    VideoModel(
      videoId: '3',
      userId: '789',
      caption: 'Pixar\'s Elemental fire and water scene',
      videoUrl: 'assets/videos/buraqvelly.mp4',
      thumbnailUrl: 'https://example.com/elemental_thumbnail.jpg',
      likesCount: 42100,
      commentsCount: 3800,
      sharesCount: 4200,
      createdAt: '26-3-2024',
      soundId: 'ghi789',
      soundName: 'Elemental Theme - Pixar',
      uploadUsername: 'PixarShorts',
      uploadUserProfile: 'assets/images/userProfile3.jpg',
      isUserVerified: true,
      hashtags: ['Pixar', 'Elemental', 'DisneyPlus', 'Animation'],
      privacy: 'public',
      isLiked: true,
    ),
    VideoModel(
      videoId: '4',
      userId: '101',
      caption: 'Demon Slayer: Kimetsu no Yaiba fight scene',
      videoUrl: 'assets/videos/flyingman.mp4',
      thumbnailUrl: 'https://example.com/demonslayer_thumbnail.jpg',
      likesCount: 87600,
      commentsCount: 12500,
      sharesCount: 9800,
      createdAt: '27-3-2024',
      soundId: 'jkl012',
      soundName: 'Gurenge - LiSA',
      uploadUsername: 'AnimeWorld',
      uploadUserProfile: 'assets/images/userProfile4.jpg',
      isUserVerified: false,
      hashtags: ['DemonSlayer', 'Anime', 'Ufotable', 'JapaneseAnimation'],
      privacy: 'public',
      isLiked: false,
    ),
    VideoModel(
      videoId: '5',
      userId: '112',
      caption: 'Rick and Morty interdimensional cable',
      videoUrl: 'assets/videos/frozen2.mp4',
      thumbnailUrl: 'https://example.com/rickmorty_thumbnail.jpg',
      likesCount: 54300,
      commentsCount: 8700,
      sharesCount: 6500,
      createdAt: '28-3-2024',
      soundId: 'mno345',
      soundName: 'Rick and Morty Theme',
      uploadUsername: 'AdultSwimClips',
      uploadUserProfile: 'assets/images/movieslogo.jpg',
      isUserVerified: true,
      hashtags: ['RickAndMorty', 'AdultSwim', 'Cartoon', 'SciFi'],
      privacy: 'public',
      isLiked: true,
    ),
    VideoModel(
      videoId: '6',
      userId: '131',
      caption: 'Studio Ghibli - Howl\'s Moving Castle',
      videoUrl: 'assets/videos/nature.mp4',
      thumbnailUrl: 'https://example.com/ghibli_thumbnail.jpg',
      likesCount: 129800,
      commentsCount: 9800,
      sharesCount: 12500,
      createdAt: '29-3-2024',
      soundId: 'pqr678',
      soundName: 'Merry-Go-Round of Life - Joe Hisaishi',
      uploadUsername: 'GhibliMagic',
      uploadUserProfile: 'assets/images/cartoon.webp',
      isUserVerified: false,
      hashtags: [
        'Ghibli',
        'HowlsMovingCastle',
        'JapaneseAnimation',
        'Miyazaki'
      ],
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
        userImage: 'assets/images/userProfile1.jpg'),
    CommentsModel(
        username: 'Saqib',
        text: 'this video is awesome',
        time: '11h',
        likes: 45,
        isLiked: false,
        userImage: 'assets/images/userProfile2.jpg'),
    CommentsModel(
        username: 'John',
        text: 'nice content!',
        time: '54m',
        likes: 12,
        isLiked: true,
        userImage: 'assets/images/userProfile3.jpg'),
    CommentsModel(
        username: 'Emma',
        text: 'keep it up!',
        time: '1h',
        likes: 78,
        isLiked: false,
        userImage: 'assets/images/userProfile4.jpg'),
    CommentsModel(
        username: 'Mike',
        text: 'loved this video',
        time: '9h',
        likes: 23,
        isLiked: true,
        userImage: 'assets/images/cartoon.webp'),
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
      image: 'assets/images/userProfile4.jpg',
      title: 'Your Story',
    ),
    StoryModel(
      image: 'assets/images/userProfile2.jpg',
      title: 'SillyToonLand',
    ),
    StoryModel(
      image: 'assets/images/userProfile3.jpg',
      title: 'MovieManiaClips',
    ),
    StoryModel(
      image: 'assets/images/cartoon.webp',
      title: 'SillyToonLand',
    ),
    StoryModel(
      image: 'assets/images/movieslogo.jpg',
      title: 'MovieManiaClips',
    ),
  ];

// List of chats
  final List<ChatModel> chats = [
    ChatModel(
      chatUserName: 'Ali Raza',
      subtitle: 'Sent 1h ago',
      profilePic: 'assets/images/movieslogo.jpg',
    ),
    ChatModel(
      chatUserName: 'Arif Ali',
      subtitle: 'Sent 4h ago',
      profilePic: 'assets/images/userProfile3.jpg',
    ),
    ChatModel(
      chatUserName: 'Elma',
      subtitle: 'Sent 45m ago',
      profilePic: 'assets/images/userProfile4.jpg',
    ),
    ChatModel(
      chatUserName: 'Majid Ali',
      subtitle: 'Sent 4h ago',
      profilePic: 'assets/images/userProfile2.jpg',
    ),
    ChatModel(
      chatUserName: 'Zulqarnian',
      subtitle: 'Seen today',
      profilePic: 'assets/images/userProfile1.jpg',
    ),
  ];
}

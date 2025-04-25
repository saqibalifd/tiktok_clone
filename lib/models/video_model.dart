class VideoModel {
  final String videoId;
  final String userId;
  final String caption;
  final String videoUrl;
  final String thumbnailUrl;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;
  final String createdAt;
  final String soundId;
  final String? soundName; // Added
  final String uploadUsername; // Added
  final String uploadUserProfile; // Added
  final bool isUserVerified; // Added
  final List<String> hashtags;
  final String privacy;
  final bool? isLiked;

  VideoModel({
    required this.videoId,
    required this.userId,
    required this.caption,
    required this.videoUrl,
    required this.thumbnailUrl,
    required this.likesCount,
    required this.commentsCount,
    required this.sharesCount,
    required this.createdAt,
    required this.soundId,
    required this.soundName, // Added
    required this.uploadUsername, // Added
    required this.uploadUserProfile, // Added
    required this.isUserVerified, // Added
    required this.hashtags,
    required this.privacy,
    this.isLiked,
  });

  factory VideoModel.fromMap(Map<String, dynamic> map) {
    return VideoModel(
      videoId: map['videoId'],
      userId: map['userId'],
      caption: map['caption'] ?? '',
      videoUrl: map['videoUrl'],
      thumbnailUrl: map['thumbnailUrl'],
      likesCount: map['likesCount'] ?? 0,
      commentsCount: map['commentsCount'] ?? 0,
      sharesCount: map['sharesCount'] ?? 0,
      createdAt: map['createdAt'],
      soundId: map['soundId'],
      soundName: map['soundName'] ?? '', // Added
      uploadUsername: map['uploadUsername'] ?? '', // Added
      uploadUserProfile: map['uploadUserProfile'] ?? '', // Added
      isUserVerified: map['isUserVerified'] ?? false, // Added
      hashtags: List<String>.from(map['hashtags'] ?? []),
      privacy: map['privacy'] ?? 'public',
      isLiked: map['isLiked'] ?? false, // Added
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'videoId': videoId,
      'userId': userId,
      'caption': caption,
      'videoUrl': videoUrl,
      'thumbnailUrl': thumbnailUrl,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'sharesCount': sharesCount,
      'createdAt': createdAt,
      'soundId': soundId,
      'soundName': soundName, // Added
      'uploadUsername': uploadUsername, // Added
      'uploadUserProfile': uploadUserProfile, // Added
      'isUserVerified': isUserVerified, // Added
      'hashtags': hashtags,
      'privacy': privacy,
      'isLiked': isLiked,
    };
  }
}

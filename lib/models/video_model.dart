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
  final List<String> hashtags;
  final String privacy;

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
    required this.hashtags,
    required this.privacy,
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
      hashtags: List<String>.from(map['hashtags'] ?? []),
      privacy: map['privacy'] ?? 'public',
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
      'hashtags': hashtags,
      'privacy': privacy,
    };
  }
}

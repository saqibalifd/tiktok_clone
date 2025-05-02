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
}

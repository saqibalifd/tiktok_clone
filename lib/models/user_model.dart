class UserModel {
  final String userId;
  final String username;
  final String email;
  final String profileImageUrl;
  final String bio;
  final int followersCount;
  final int followingCount;
  final int videosCount;
  final String createdAt;
  final String? fcmToken;

  UserModel({
    required this.userId,
    required this.username,
    required this.email,
    required this.profileImageUrl,
    required this.bio,
    required this.followersCount,
    required this.followingCount,
    required this.videosCount,
    required this.createdAt,
    this.fcmToken,
  });
}

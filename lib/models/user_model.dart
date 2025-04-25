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

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'],
      username: map['username'],
      email: map['email'],
      profileImageUrl: map['profileImageUrl'],
      bio: map['bio'] ?? '',
      followersCount: map['followersCount'] ?? 0,
      followingCount: map['followingCount'] ?? 0,
      videosCount: map['videosCount'] ?? 0,
      createdAt: map['createdAt'],
      fcmToken: map['fcmToken'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'username': username,
      'email': email,
      'profileImageUrl': profileImageUrl,
      'bio': bio,
      'followersCount': followersCount,
      'followingCount': followingCount,
      'videosCount': videosCount,
      'createdAt': createdAt,
      'fcmToken': fcmToken,
    };
  }
}

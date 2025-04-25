class CommentModel {
  final String commentId;
  final String videoId;
  final String userId;
  final String text;
  final int likesCount;
  final String createdAt;
  final String? parentCommentId;

  CommentModel({
    required this.commentId,
    required this.videoId,
    required this.userId,
    required this.text,
    required this.likesCount,
    required this.createdAt,
    this.parentCommentId,
  });

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
      commentId: map['commentId'],
      videoId: map['videoId'],
      userId: map['userId'],
      text: map['text'],
      likesCount: map['likesCount'] ?? 0,
      createdAt: map['createdAt'],
      parentCommentId: map['parentCommentId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'commentId': commentId,
      'videoId': videoId,
      'userId': userId,
      'text': text,
      'likesCount': likesCount,
      'createdAt': createdAt,
      'parentCommentId': parentCommentId,
    };
  }
}

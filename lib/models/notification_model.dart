class NotificationModel {
  final String notificationId;
  final String recipientId;
  final String senderId;
  final String type;
  final bool read;
  final String createdAt;
  final String? videoId;
  final String? commentId;

  NotificationModel({
    required this.notificationId,
    required this.recipientId,
    required this.senderId,
    required this.type,
    required this.read,
    required this.createdAt,
    this.videoId,
    this.commentId,
  });

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      notificationId: map['notificationId'],
      recipientId: map['recipientId'],
      senderId: map['senderId'],
      type: map['type'],
      read: map['read'] ?? false,
      createdAt: map['createdAt'],
      videoId: map['videoId'],
      commentId: map['commentId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'recipientId': recipientId,
      'senderId': senderId,
      'type': type,
      'read': read,
      'createdAt': createdAt,
      'videoId': videoId,
      'commentId': commentId,
    };
  }
}

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
}

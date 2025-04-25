class MessageModel {
  final String messageId;
  final String chatId;
  final String senderId;
  final String text;
  final String? mediaUrl;
  final String createdAt;

  MessageModel({
    required this.messageId,
    required this.chatId,
    required this.senderId,
    required this.text,
    this.mediaUrl,
    required this.createdAt,
  });

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
        messageId: map['messageId'],
        chatId: map['chatId'],
        senderId: map['senderId'],
        text: map['text'],
        mediaUrl: map['mediaUrl'],
        createdAt: map['createdAt']);
  }

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'chatId': chatId,
      'senderId': senderId,
      'text': text,
      'mediaUrl': mediaUrl,
      'createdAt': createdAt,
    };
  }
}

class ChatModel {
  final String chatId;
  final List<String> participants;
  final String? lastMessageId;
  final String updatedAt;

  ChatModel({
    required this.chatId,
    required this.participants,
    this.lastMessageId,
    required this.updatedAt,
  });

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
        chatId: map['chatId'],
        participants: List<String>.from(map['participants']),
        lastMessageId: map['lastMessageId'],
        updatedAt: map['updatedAt']);
  }

  Map<String, dynamic> toMap() {
    return {
      'chatId': chatId,
      'participants': participants,
      'lastMessageId': lastMessageId,
      'updatedAt': 'updatedAt',
    };
  }
}

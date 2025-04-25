class SoundModel {
  final String soundId;
  final String name;
  final String author;
  final String soundUrl;
  final int videosCount;
  final double duration;

  SoundModel({
    required this.soundId,
    required this.name,
    required this.author,
    required this.soundUrl,
    required this.videosCount,
    required this.duration,
  });

  factory SoundModel.fromMap(Map<String, dynamic> map) {
    return SoundModel(
      soundId: map['soundId'],
      name: map['name'],
      author: map['author'],
      soundUrl: map['soundUrl'],
      videosCount: map['videosCount'] ?? 0,
      duration: (map['duration'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'soundId': soundId,
      'name': name,
      'author': author,
      'soundUrl': soundUrl,
      'videosCount': videosCount,
      'duration': duration,
    };
  }
}

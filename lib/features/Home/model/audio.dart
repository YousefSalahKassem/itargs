class Radio {
  final num id;
  final num chapterId;
  final num fileSize;
  final String format;
  final String url;

  Radio({
    required this.id,
    required this.chapterId,
    required this.fileSize,
    required this.format,
    required this.url,
  });

  factory Radio.fromJson(Map<String, dynamic> map) {
    return Radio(
      id: map['id'] as num,
      chapterId: map['chapter_id'] as num,
      fileSize: map['file_size'] as num,
      format: map['format'] as String,
      url: map['audio_url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chapter_id': chapterId,
      'file_size': fileSize,
      'format': format,
      'audio_url': url,
    };
  }
}

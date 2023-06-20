class RawQuote {
  final String id;
  final String content;
  final String author;
  final List<String> tags;
  final String authorSlug;
  final int length;
  final String dateAdded;
  final String dateModified;

  RawQuote({
    required this.id,
    required this.content,
    required this.author,
    required this.tags,
    required this.authorSlug,
    required this.length,
    required this.dateAdded,
    required this.dateModified,
  });

  factory RawQuote.fromJson(Map<String, dynamic> json) {
    return RawQuote(
      id: json['_id'],
      content: json['content'],
      author: json['author'],
      tags: List<String>.from(json['tags']),
      authorSlug: json['authorSlug'],
      length: json['length'],
      dateAdded: json['dateAdded'],
      dateModified: json['dateModified'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'content': content,
      'author': author,
      'tags': tags,
      'authorSlug': authorSlug,
      'length': length,
      'dateAdded': dateAdded,
      'dateModified': dateModified,
    };
  }
}

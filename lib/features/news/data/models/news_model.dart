// lib/features/news/data/models/news_model.dart

import 'package:newsapp/features/news/domain/entities/news_entity.dart';
import 'package:newsapp/features/news/domain/entities/source_entity.dart';

class NewsModel extends NewsEntity {
  NewsModel({
    required SourceEntity source,
    String? author,
    required String title,
    String? description,
    required String url,
    String? urlToImage,
    required DateTime publishedAt,
    String? content,
  }) : super(
    source: source,
    author: author,
    title: title,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content,
  );

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      source: SourceEntity(
        id: json['source']['id'],
        name: json['source']['name'],
      ),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
    );
  }
}

// lib/features/news/data/datasources/news_remote_data_source.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/core/constants/constants.dart';
import 'package:newsapp/features/news/data/models/news_model.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsEntity>> getTopHeadlines(String query);
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final http.Client client;

  NewsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<NewsEntity>> getTopHeadlines(String query) async {
    final response = await client.get(
      Uri.parse('${Constants.baseUrl}/top-headlines?apiKey=${Constants.apiKey}&q=$query'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      final List<dynamic> articles = jsonMap['articles'];
      return articles.map((article) => NewsModel.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}

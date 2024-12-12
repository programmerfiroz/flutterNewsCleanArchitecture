// lib/features/news/presentation/widgets/news_widget.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/theme/controller/theme_controller.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';
import 'package:newsapp/features/news/presentation/pages/webview_page.dart';

class NewsWidget extends StatelessWidget {
  final NewsEntity news;

  NewsWidget({required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: news.urlToImage != null
            ? Image.network(
          news.urlToImage!,
          width: 100,
          fit: BoxFit.cover,
        )
            : null,
        title: Text(news.title),
        subtitle: Text(news.description ?? ''),
        onTap: () {
          Get.to(() => WebviewPage(url: news.url));
        },
      ),
    );
  }
}

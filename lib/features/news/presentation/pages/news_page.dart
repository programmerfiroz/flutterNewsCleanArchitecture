// lib/features/news/presentation/pages/news_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/theme/controller/theme_controller.dart';
import 'package:newsapp/features/news/presentation/controllers/news_controller.dart';
import 'package:newsapp/features/news/presentation/widgets/news_widget.dart';

class NewsPage extends StatelessWidget {
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    final NewsController controller = Get.find<NewsController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Headlines'),
      ),
      body: Obx(() {
        final currentTextTheme = themeController.getCurrentTextTheme(context, themeController);

        return Column(
          children: [
            Text("hello",style: currentTextTheme.bodyLarge),

            DropdownButton<ThemeType>(
              value: themeController.selectedTheme.value,
              items: const [
                DropdownMenuItem(
                  value: ThemeType.system,
                  child: Text('System Default'),
                ),
                DropdownMenuItem(
                  value: ThemeType.light,
                  child: Text('Light Theme'),
                ),
                DropdownMenuItem(
                  value: ThemeType.dark,
                  child: Text('Dark Theme'),
                ),
              ],
              onChanged: (ThemeType? newValue) {
                if (newValue != null) {
                  themeController.setTheme(newValue);
                }
              },
            ),
            Expanded(
              child: controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : controller.errorMessage.isNotEmpty
                  ? Center(child: Text(controller.errorMessage.value))
                  : ListView.builder(
                itemCount: controller.newsList.length,
                itemBuilder: (context, index) {
                  return NewsWidget(news: controller.newsList[index]);
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}

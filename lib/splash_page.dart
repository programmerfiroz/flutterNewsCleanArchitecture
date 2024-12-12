// lib/features/news/presentation/pages/splash_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:newsapp/core/constants/colors.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // You can customize the splash screen UI as you like
    return Scaffold(
      backgroundColor: AppColors.primary,  // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.article,  // You can use your app's logo or any icon
              size: 100,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to NewsApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Add a delay before navigating to the next page (NewsPage)
  @override
  void initState() {
    super.initState();
    _navigateToNewsPage();
  }

  void _navigateToNewsPage() {
    Timer(Duration(seconds: 3), () {
      Get.offNamed('/news');  // Navigate to the news page after 3 seconds
    });
  }
}

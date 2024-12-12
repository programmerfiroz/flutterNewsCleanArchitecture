// lib/main.dart

import 'package:flutter/material.dart';
import 'package:newsapp/core/theme/controller/theme_controller.dart';
import 'app.dart';
import 'package:get/get.dart';


void main() async {
  Get.put(ThemeController());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

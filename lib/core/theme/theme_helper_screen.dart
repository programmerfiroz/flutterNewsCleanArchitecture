import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/theme/controller/theme_controller.dart';

class TextThemeComparisonScreen extends StatelessWidget {
  const TextThemeComparisonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () {
            final currentTextTheme =
                themeController.getCurrentTextTheme(context, themeController);
            return Text(
              'Theme & Text Size Example',
              style: currentTextTheme.headlineMedium,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select Theme:'),
            Obx(() {
              return DropdownButton<ThemeType>(
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
              );
            }),
            const SizedBox(height: 20),
            // Display text samples
            Obx(() {
              final currentTextTheme =
                  themeController.getCurrentTextTheme(context, themeController);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Headline Large (32pt)',
                      style: currentTextTheme.headlineLarge),
                  Text('Headline Medium (24pt)',
                      style: currentTextTheme.headlineMedium),
                  Text('Headline Small (18pt)',
                      style: currentTextTheme.headlineSmall),
                  Text('Title Large (16pt)',
                      style: currentTextTheme.titleLarge),
                  Text('Title Medium (16pt)',
                      style: currentTextTheme.titleMedium),
                  Text('Title Small (16pt)',
                      style: currentTextTheme.titleSmall),
                  Text('Body Large (14pt)', style: currentTextTheme.bodyLarge),
                  Text('Body Medium (14pt)',
                      style: currentTextTheme.bodyMedium),
                  Text('Body Small (14pt)', style: currentTextTheme.bodySmall),
                  Text('Label Large (12pt)',
                      style: currentTextTheme.labelLarge),
                  Text('Label Medium (12pt)',
                      style: currentTextTheme.labelMedium),
                  IconButton(
                    onPressed: () {
                      // Get.to(() => const LoginScreen());
                    },
                    icon: const Icon(Icons.login),
                    color: themeController.selectedTheme.value == ThemeType.dark
                        ? Colors.white // Dark theme icon color
                        : Colors.black, // Light theme icon color
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:bmi_calculator/Controllers/ThemeControllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themechangebtn extends StatelessWidget {
  const Themechangebtn({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();

    return Obx(() {
      bool isDark = themeController.isDark.value;

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                isDark ? Icons.light_mode : Icons.dark_mode,
                color: isDark ? Colors.blueAccent : Colors.blueAccent,
              ),
              onPressed: themeController.changeTheme,
            ),
          ),
        ],
      );
    });
  }
}

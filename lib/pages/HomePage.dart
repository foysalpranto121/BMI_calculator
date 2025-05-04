import 'package:bmi_calculator/Components/HightSelectors.dart';
import 'package:bmi_calculator/Components/primaryButton.dart';
import 'package:bmi_calculator/Components/ract_button.dart';
import 'package:bmi_calculator/Controllers/ThemeControllers.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AgeSelectors.dart';
import '../Components/ThemeChangeBtn.dart';
import '../Components/WeightSelectors.dart';
import '../Controllers/BMIController.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    BMIConroller bmiController = Get.put(BMIConroller());

    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          bool isDark = themeController.isDark.value;

          return Container(
            decoration: BoxDecoration(
              gradient:
                  isDark
                      ? null // No gradient in dark mode
                      : LinearGradient(
                        colors: [Colors.blue.shade100, Colors.green.shade200],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
              color: isDark ? const Color(0xFF1E1E2F) : null, // Dark background
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Themechangebtn(),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Welcome 🙂',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'BMI Calculator',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Primarybutton(
                        icon: Icons.male,
                        btnName: 'MALE',
                        onPress: () {
                          bmiController.genderHandle("MALE");
                        },
                      ),
                      const SizedBox(width: 20),
                      Primarybutton(
                        icon: Icons.female,
                        btnName: 'FEMALE',
                        onPress: () {
                          bmiController.genderHandle("FEMALE");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Hightselectors(),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              Weightselectors(),
                              SizedBox(height: 30),
                              AgeSelector(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  MyRactButton(
                    onPress: () {
                      bmiController.CalculatBMI();
                      Get.to(ResultPage());
                    },
                    btnName: "LET'S GO",
                    icon: Icons.done_all_rounded,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

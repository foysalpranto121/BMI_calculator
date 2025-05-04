
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/BMIController.dart';

class Primarybutton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;

  const Primarybutton({super.key, required this.icon, required this.btnName, required this.onPress});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiController = Get.put(BMIConroller());

    return   Expanded(
      child: InkWell(
        onTap: onPress,
        child: Obx (

              () => Container(
          height: 50,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            color: bmiController.Gender.value == btnName ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,

                size: 25,
                color:  bmiController.Gender.value == btnName ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                btnName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,

                  color: bmiController.Gender.value == btnName ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}

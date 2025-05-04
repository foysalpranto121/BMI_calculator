import 'package:bmi_calculator/Components/SecBtn.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIConroller controller = Get.put(BMIConroller());
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "AGE",
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Obx(() =>  Text(
      "${controller.age.value}",
        style: TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),

               ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Secbtn(onpress: () {
                  controller.age.value++;


                }, icon: Icons.add,),
                Secbtn(onpress: () {

                  controller.age.value--;
                }, icon: Icons.minimize,),



              ]

              ,
            )

          ],
        ),
      ),
    );
  }
}

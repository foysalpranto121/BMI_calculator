import 'package:bmi_calculator/Components/SecBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Controllers/BMIController.dart';

class Weightselectors extends StatelessWidget {
  const Weightselectors({super.key});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiController = Get.put(BMIConroller());
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
                  "Weight",
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
                Obx( () => Text(
                  "${bmiController.weight.value}",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Secbtn(onpress: (
                    ) {
                  bmiController.weight.value ++;

                }, icon: Icons.add,),
                Secbtn(onpress: () {


                  bmiController.weight.value --;
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



import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Hightselectors extends StatelessWidget {
  const Hightselectors({super.key});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiController =Get .put(BMIConroller());
    return  Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Column(

            children: [

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
            "Height (CM)",
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),

            ],
          ),
        Expanded(
          child: Obx(()=>SfSlider.vertical(
            min: 50,
            max: 250,
            value: bmiController.height.value,
            interval: 25,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 5,
            inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            onChanged: (dynamic value){
              bmiController.height.value=value;

            },
          ),)
        ),


            ],
          )),
    );
  }
}

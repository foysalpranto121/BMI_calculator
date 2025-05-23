import 'package:flutter/material.dart';

class Secbtn extends StatelessWidget {
 final VoidCallback onpress;
  final IconData icon;
  const Secbtn({super.key, required this.onpress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).colorScheme.primaryContainer,
            size: 24.0,


          )


      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding: const EdgeInsets.all(5.0),
          height: 90,
          // width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: contrastColor, borderRadius: BorderRadius.circular(15.0)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                color: Colors.white, child: Image.asset(farmer, height: 70.0)),
            const Text('Farm', style: TextStyle(color: Colors.white)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.3),
            Icon(Icons.arrow_forward_ios, color: mainColor),
          ])),
    );
  }
}
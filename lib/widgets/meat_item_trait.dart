import 'package:flutter/material.dart';

class mealiteamtrairt extends StatelessWidget {
  const mealiteamtrairt({super.key, required this.label, required this.icon});
final String label;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 17,color: Colors.white ,),
        const SizedBox(width: 6,),
        Text(label,style: TextStyle(color: Colors.white),),
      ],
    );
  }
  
}
import 'package:flutter/material.dart';
import 'package:flutter_application_4/widgets/Meal.dart';
import 'package:flutter_application_4/widgets/meat_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class Mealitem extends StatelessWidget {
  const Mealitem({super.key, required this.meal,required this.select});

  final Meal meal;
  final void Function(BuildContext context, Meal meal) select;
  String get complexityText {
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }
   
   String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8) ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
        ) , elevation: 2,
      
        child: InkWell(
          onTap: () {

            select(context, meal);
          },
          child: Stack(
            children: [
              FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(meal.imageUrl),fit: BoxFit.cover, width: double.infinity, height: 200,),
            Positioned(
bottom: 0,
right: 0,
left:0,
child: Container(
  color: Colors.black54,
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Column(
      children: [
        Text(
          meal.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          
        ),
      const SizedBox(height: 6,),
      Row( mainAxisAlignment: MainAxisAlignment.center,
children: [
  
  mealiteamtrairt(label: '${meal.duration} min', icon: Icons.schedule),
  const SizedBox(width: 25,),
  mealiteamtrairt(label: complexityText, icon: Icons.star),
  const SizedBox(width: 25,),
  mealiteamtrairt(label: affordabilityText, icon: Icons.attach_money),
],

      )
    ],
  ),

             ) ),)
            ],
            

          ),
        ),
     );
  }
}
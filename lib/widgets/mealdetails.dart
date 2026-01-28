import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as img;
import 'package:flutter_application_4/widgets/Meal.dart';

class Meal_details extends StatelessWidget {
  const Meal_details({super.key, required this.meal});

  final Meal meal;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(meal.title,style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        )),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.network(meal.imageUrl),
            const SizedBox(height: 20,),
            ExpansionTile(
              title:
            Text('Ingredients',style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold
            ),
            ),
            children: [
            for(final ingredient in meal.ingredients)
            Text(ingredient,style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,)),
          
          ]),
          
            const SizedBox(height: 40,),


 ExpansionTile(
              title:

            Text('Steps',style: Theme.of(context).textTheme.titleLarge!.copyWith(

          
              color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold
            ),
            ),
            children: [
              for(final step in meal.steps)
              Padding(padding:  const EdgeInsets.symmetric(horizontal: 16,vertical: 9),
        
            child: Text(step,style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,)),
              ), ]),
          ]
         
        
        ),
      )
   );
  }
 
  
}
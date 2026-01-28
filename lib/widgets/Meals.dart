import 'package:flutter/material.dart';
import 'package:flutter_application_4/widgets/Meal.dart';
import 'package:flutter_application_4/widgets/mealitem.dart';
import 'package:flutter_application_4/widgets/mealdetails.dart';
class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key,  this.title, required this.meals  });
  void selectmeal(BuildContext context, Meal meal) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Meal_details(meal: meal)));
  }
  final String? title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget Content= ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          return Mealitem(meal: meals[index],select:selectmeal);
        },
      );

    if (meals.isEmpty) {
     Content = Center(
        child: Text(
          'No meals found! Try selecting a different category.',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }
    if (title == null) {
      return Content;
    } else {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Content
    );
  }}
}


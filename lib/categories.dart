import 'package:flutter/material.dart';
import 'package:flutter_application_4/categoryclass.dart';
import 'package:flutter_application_4/data/dummydata.dart';
import 'package:flutter_application_4/widgets/Meals.dart';
import 'package:flutter_application_4/widgets/categorygriditem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void selectCategory(BuildContext context, Category category) {
    final filteredMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(category.id)).toList();
    Navigator.push(context, MaterialPageRoute(builder: (context) => MealsScreen(title: category.title, meals: filteredMeals)));
  }
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories) 
            Categorygriditem(category: category, onSelectCategory: () {
              selectCategory(context, category);
            }), 
        ],       
    )    ); 
  }
  // Category screen implementation
}
import 'package:flutter/material.dart';
import 'package:flutter_application_4/categoryclass.dart';
class Categorygriditem extends StatelessWidget {
  const Categorygriditem({super.key, required this.category, this.onSelectCategory});
  final Category category;
  final void Function()? onSelectCategory;
    @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: () { onSelectCategory!();
          
        },splashColor: Theme.of(context).colorScheme.primaryContainer,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.7),
                category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
      );
    }
  }
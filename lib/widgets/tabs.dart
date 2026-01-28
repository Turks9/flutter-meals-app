import 'package:flutter/material.dart';
import 'package:flutter_application_4/categories.dart';
import 'package:flutter_application_4/widgets/Meals.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
} 
class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  void _selectPage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen();
    var activeTitle = 'Categories';
    if(_selectedIndex == 1){
      activeTitle = 'Favorites';
      activePage = MealsScreen( meals: []);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activeTitle),
      ),
      body:activePage,
      bottomNavigationBar: BottomNavigationBar(
       onTap: _selectPage,
       currentIndex: _selectedIndex,
       items: const[    BottomNavigationBarItem(
          icon: Icon(Icons.category_sharp),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Favorites',
        ),
       ],  ),
      
    );
 }
}
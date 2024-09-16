import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import 'category_item.dart';
import 'category_model.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  static const List<CategoryModel> categories = [
    CategoryModel(
      title: 'Sport',
      imageName: 'assets/images/ball.png',
      color: Color(0xffC91C22),
    ),
    CategoryModel(
      title: 'Politics',
      imageName: 'assets/images/Politics.png',
      color: Color(0xff003E90),
    ),
    CategoryModel(
      title: 'Health',
      imageName: 'assets/images/health.png',
      color: Color(0xffED1E79),
    ),
    CategoryModel(
      title: 'business ',
      imageName: 'assets/images/bussines.png',
      color: Color(0xffCF7E48),
    ),
    CategoryModel(
      title: 'Environment',
      imageName: 'assets/images/environment.png',
      color: Color(0xff4882CF),
    ),
    CategoryModel(
      title: 'Science',
      imageName: 'assets/images/science.png',
      color: Color(0xffF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              'Pick your category \n of interest',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppTheme.navy,
                  ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (_, int index) => CategoryItem(
                category: categories[index],
                index: index,
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}

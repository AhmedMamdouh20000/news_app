import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/app_theme.dart';

import 'category/category_grid.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppTheme.white,
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('News App'),
        ),
        body: const CategoryGrid(),
      ),
    );
  }
}

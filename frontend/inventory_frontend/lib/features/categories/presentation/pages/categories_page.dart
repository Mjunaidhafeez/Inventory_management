import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Categories Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 
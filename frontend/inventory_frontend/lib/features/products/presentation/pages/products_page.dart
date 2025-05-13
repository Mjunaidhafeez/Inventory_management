import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Products Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 
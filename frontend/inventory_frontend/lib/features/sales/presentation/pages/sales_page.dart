import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Sales Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 
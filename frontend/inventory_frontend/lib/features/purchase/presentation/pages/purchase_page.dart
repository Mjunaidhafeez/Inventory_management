import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Purchase Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
} 
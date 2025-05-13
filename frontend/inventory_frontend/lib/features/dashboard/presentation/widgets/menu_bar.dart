import 'package:flutter/material.dart';
import 'package:inventory_frontend/core/routes/app_router.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blue.shade900,
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Logo or App Name
          const Text(
            'Inventory System',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          // Menu Items
          _buildMenuItem(
            context: context,
            icon: Icons.inventory_2,
            title: 'Products',
            route: AppRouter.products,
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.category,
            title: 'Categories',
            route: AppRouter.categories,
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.shopping_cart,
            title: 'Sales',
            route: AppRouter.sales,
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.shopping_bag,
            title: 'Purchase',
            route: AppRouter.purchase,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String route,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      hoverColor: Colors.blue.shade800,
    );
  }
} 
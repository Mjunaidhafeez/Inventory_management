import 'package:flutter/material.dart';
import 'package:inventory_frontend/features/dashboard/presentation/widgets/menu_bar.dart';
import 'package:inventory_frontend/features/dashboard/presentation/widgets/navigation_bar.dart';
import 'package:inventory_frontend/features/dashboard/presentation/widgets/dashboard_content.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Menu Bar
          const CustomMenuBar(),
          
          // Main Content
          Expanded(
            child: Column(
              children: [
                // Top Navigation Bar
                const CustomNavigationBar(),
                
                // Dashboard Content
                const Expanded(
                  child: DashboardContent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 
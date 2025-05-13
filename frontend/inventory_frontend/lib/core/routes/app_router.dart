import 'package:flutter/material.dart';
import 'package:inventory_frontend/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:inventory_frontend/features/products/presentation/pages/products_page.dart';
import 'package:inventory_frontend/features/categories/presentation/pages/categories_page.dart';
import 'package:inventory_frontend/features/sales/presentation/pages/sales_page.dart';
import 'package:inventory_frontend/features/purchase/presentation/pages/purchase_page.dart';
import 'package:inventory_frontend/features/profile/presentation/pages/profile_page.dart';
import 'package:inventory_frontend/features/settings/presentation/pages/settings_page.dart';

class AppRouter {
  static const String dashboard = '/';
  static const String products = '/products';
  static const String categories = '/categories';
  static const String sales = '/sales';
  static const String purchase = '/purchase';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case products:
        return MaterialPageRoute(builder: (_) => const ProductsPage());
      case categories:
        return MaterialPageRoute(builder: (_) => const CategoriesPage());
      case sales:
        return MaterialPageRoute(builder: (_) => const SalesPage());
      case purchase:
        return MaterialPageRoute(builder: (_) => const PurchasePage());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
} 
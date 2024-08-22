import 'package:flutter/material.dart';
import 'package:sprout/core/routes/routes.dart';
import 'package:sprout/presentation/home/home_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homepage:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeView();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Routes Here.."),
            ),
          ),
        );
    }
  }
}

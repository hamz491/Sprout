import 'package:flutter/material.dart';
import 'package:sprout/core/routes/routes.dart';
import 'package:sprout/presentation/home/home_view.dart';
import 'package:sprout/presentation/notifications/notifications_view.dart';
import 'package:sprout/sprout.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case Routes.sprout:
        return MaterialPageRoute(
          builder: (context) {
            return const Sprout();
          },
        );
      case Routes.homepage:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeView();
          },
        );
      case Routes.notificationsView:
        return MaterialPageRoute(
          builder: (context) {
            return const NotificationsView();
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

import 'package:demo/features/next_page/presentation/pages/next_page.dart';
import 'package:demo/routes/not_found.dart';
import 'package:flutter/material.dart';
import 'package:demo/features/home/presentation/pages/home_page.dart';
import 'package:demo/features/auth/presentation/pages/login_page.dart';
import 'package:go_router/go_router.dart';

class RouterConfig {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),
      GoRoute(
        path: '/homePage',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: Curves.easeOutQuart,
                    ),
                  ),
              child: child,
            );
          },
        ),
      ),

      GoRoute(
        path: '/nextPage',
        builder: (BuildContext context, GoRouterState state) =>
            const NextPage(),
      ),
    ],
    errorBuilder: (context, state) => NotFound(),
  );
}

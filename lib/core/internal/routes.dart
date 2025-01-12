import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/auth/presentation/login_screen.dart';
import 'package:vikrf_thesis/features/home/presentation/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeIn).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    ...MenuList.values.map(
      (MenuList chartType) => GoRoute(
        path: '/${chartType.name}',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            CustomTransitionPage(
          key: const ValueKey('home_screen'),
          child: const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeIn).animate(animation),
              child: child,
            );
          },
        ),
      ),
    ),
    GoRoute(
      path: '/:any',
      redirect: (context, state) {
        return '/${MenuList.values.first.name}';
      },
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/analytics/presentation/analytics_screen.dart';
import 'package:vikrf_thesis/features/auth/presentation/login_screen.dart';
import 'package:vikrf_thesis/features/devices/presentation/devices_screen.dart';
import 'package:vikrf_thesis/features/gallery/presentation/gallery_screen.dart';
import 'package:vikrf_thesis/features/history/presentation/history_screen.dart';
import 'package:vikrf_thesis/features/home/presentation/home_screen.dart';
import 'package:vikrf_thesis/features/overview/presentation/overview_screen.dart';
import 'package:vikrf_thesis/features/rules/presentation/rules_screen.dart';
import 'package:vikrf_thesis/features/settings/presentation/settings_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HomeScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/overview',
              builder: (context, state) => OverviewScreen(),
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/devices',
              builder: (context, state) => DevicesScreen(),
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/analytics',
              builder: (context, state) => AnalyticsScreen(),
            )
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => SettingsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/rules',
              builder: (context, state) => RulesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/gallery',
              builder: (context, state) => GalleryScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/history',
              builder: (context, state) => HistoryScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => SettingsScreen(),
            )
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/:any',
      redirect: (context, state) {
        return '/overview';
      },
    ),
  ],
);

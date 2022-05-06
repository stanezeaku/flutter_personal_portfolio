import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifeetech/screens/explore_zijemu.dart';
import 'package:ifeetech/screens/home/home_screen.dart';

class Routes {
  // AuthScreen Nav
  static final homeScreen = GoRoute(
    name: 'home',
    path: '/',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const HomeScreen(),
    ),
  );

  static final exploreScreen = GoRoute(
    name: 'zijemu',
    path: '/zijemu',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const ExploreZijemu(),
    ),
  );
}

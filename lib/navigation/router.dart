import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final goRouter = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: '/',
  routes: [
    Routes.homeScreen,
    Routes.exploreScreen,
  ],
  errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
          body: Center(
        child: Text(state.error.toString()),
      ))),
);

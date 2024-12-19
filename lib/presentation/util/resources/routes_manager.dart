import 'package:ClickToFood/presentation/auth/view/auth_view.dart';
import 'package:ClickToFood/presentation/home/view/home_view.dart';
import 'package:ClickToFood/presentation/splash/splash_view.dart';
import 'package:ClickToFood/presentation/util/resources/langauge_manager.dart';
import 'package:ClickToFood/presentation/util/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String authRoute = "/auth";

  static  List<RouteBase> routes = <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: homeRoute,
          builder: (BuildContext context, GoRouterState state) {
            return HomeView();
          },
        ),
        GoRoute(
          path: authRoute,
          builder: (BuildContext context, GoRouterState state) {
            return AuthView();
          },
        ),
        // GoRoute(
        //   path: homeRoute,
        //   builder: (BuildContext context, GoRouterState state) {
        //     return HomeView();
        //   },
        // ),
      ],
    ),
  ];
}


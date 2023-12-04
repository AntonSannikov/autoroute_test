import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/details_screen.dart';
import 'package:auto_router_test/item_screen.dart';
import 'package:auto_router_test/main_scope.dart';
import 'package:auto_router_test/screen_one.dart';
import 'package:auto_router_test/screen_two.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/main',
          page: MainScopeRoute.page,
          initial: true,
        ),
        CustomRoute(
          path: '/one',
          opaque: false,
          page: RouteOne.page,
          children: [
            AutoRoute(
              path: 'details',
              page: DetailsRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'details/item',
              page: ItemRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/two',
          page: RouteTwo.page,
        ),
      ];
}

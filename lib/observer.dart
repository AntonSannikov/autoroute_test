import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/router_storage.dart';
import 'package:flutter/material.dart';

class MyObserver extends AutoRouterObserver {
  final _routerStorage = RouterStorage();

  @override
  void didPush(Route route, Route? previousRoute) {}

  @override
  void didPop(Route route, Route? previousRoute) {
    print('Popped ${route.settings.name}');
    log('args ${route.settings.arguments}');
    super.didPop(route, previousRoute);
  }
}

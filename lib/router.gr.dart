// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailsScreen(),
      );
    },
    ItemRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ItemRouteArgs>(
          orElse: () => ItemRouteArgs(
                  id: queryParams.getInt(
                'id',
                1,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ItemScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MainScopeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScopePage(),
      );
    },
    RouteOne.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScreenOne(),
      );
    },
    RouteTwo.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScreenTwo(),
      );
    },
  };
}

/// generated route for
/// [DetailsScreen]
class DetailsRoute extends PageRouteInfo<void> {
  const DetailsRoute({List<PageRouteInfo>? children})
      : super(
          DetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ItemScreen]
class ItemRoute extends PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    Key? key,
    int id = 1,
    List<PageRouteInfo>? children,
  }) : super(
          ItemRoute.name,
          args: ItemRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ItemRoute';

  static const PageInfo<ItemRouteArgs> page = PageInfo<ItemRouteArgs>(name);
}

class ItemRouteArgs {
  const ItemRouteArgs({
    this.key,
    this.id = 1,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [MainScopePage]
class MainScopeRoute extends PageRouteInfo<void> {
  const MainScopeRoute({List<PageRouteInfo>? children})
      : super(
          MainScopeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainScopeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScreenOne]
class RouteOne extends PageRouteInfo<void> {
  const RouteOne({List<PageRouteInfo>? children})
      : super(
          RouteOne.name,
          initialChildren: children,
        );

  static const String name = 'RouteOne';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScreenTwo]
class RouteTwo extends PageRouteInfo<void> {
  const RouteTwo({List<PageRouteInfo>? children})
      : super(
          RouteTwo.name,
          initialChildren: children,
        );

  static const String name = 'RouteTwo';

  static const PageInfo<void> page = PageInfo<void>(name);
}

import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  void go(BuildContext context) => context.router.push(const RouteTwo());

  void back(BuildContext context) => context.router.pop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('ScreenOne'),
                ElevatedButton(
                  onPressed: () => go(context),
                  child: const Text('go screen two'),
                ),
                ElevatedButton(
                  onPressed: () => context.router.push(const DetailsRoute()),
                  child: const Text('details'),
                ),
                ElevatedButton(
                  onPressed: () => back(context),
                  child: const Text('back'),
                ),
                const Expanded(child: AutoRouter()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

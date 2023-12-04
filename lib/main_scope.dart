import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScopePage extends StatelessWidget {
  const MainScopePage({super.key});

  void go(BuildContext context) => context.router.push(const RouteOne());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('MainScope'),
              ElevatedButton(
                onPressed: () => go(context),
                child: const Text('go screen one'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

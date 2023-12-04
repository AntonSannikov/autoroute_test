import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  void go() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('ScreenTwo'),
              ElevatedButton(
                onPressed: () => context.router.pop(),
                child: const Text('back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

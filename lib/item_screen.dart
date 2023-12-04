import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, @QueryParam('id') this.id = 1});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('ITEM SCREEN $id'),
            ElevatedButton(
              onPressed: () => context.router.navigate(const MainScopeRoute()),
              child: const Text('to root'),
            ),
            ElevatedButton(
              onPressed: () => context.router.pop(),
              child: const Text('back'),
            ),
          ],
        ),
      )),
    );
  }
}

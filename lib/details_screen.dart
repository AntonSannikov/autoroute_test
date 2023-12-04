import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:auto_router_test/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  void go(BuildContext context) => context.router.push(const RouteTwo());

  void back(BuildContext context) => context.router.pop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('DetailsScreen'),
              ElevatedButton(
                onPressed: () => back(context),
                child: const Text('back'),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 100,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () => context.router.push(ItemRoute(id: i)),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Text('item $i'),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

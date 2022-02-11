import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/router/app_router.dart';
import '/ui/widgets/loading_container.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LoadingContainer(
      child: AutoTabsRouter(
        routes: [
          TodoRoute(),
          SettingsRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: FadeTransition(
              opacity: animation,
              // the passed child is techinaclly our animated selected-tab page
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                  label: 'Todo',
                  icon: Icon(Icons.list),
                ),
                BottomNavigationBarItem(
                  label: 'MyPage',
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

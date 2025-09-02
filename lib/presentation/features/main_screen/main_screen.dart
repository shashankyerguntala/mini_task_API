import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mini_task/core/navigation/routes/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [FirstRoute(), SecondRoute(), ThirdRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'First'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Second'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Third'),
          ],
        );
      },
    );
  }
}

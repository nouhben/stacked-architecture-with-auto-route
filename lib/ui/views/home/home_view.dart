import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architectiure/app/app_router.gr.dart';
import 'package:stacked_architectiure/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('re-build home view');
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        print('re-build home view | builder');

        //   return Scaffold(
        //     appBar: AppBar(
        //       title: Text(model.title),
        //     ),
        //     body: Center(
        //       child: Text('you pressed ${model.counter} times'),
        //     ),
        //     floatingActionButton: FloatingActionButton(
        //       onPressed: model.update,
        //     ),
        //   );
        // },
        return AutoTabsScaffold(
          appBarBuilder: (_, tabsRouter) => AppBar(
            backgroundColor: Colors.indigo,
            title: const Text('FlutterBottomNav'),
            centerTitle: true,
            leading: const AutoBackButton(),
          ),
          routes: const [
            PostsRouter(),
            UsersRouter(),
            SettingsRouter(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) => SalomonBottomBar(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 10,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                selectedColor: Colors.amberAccent,
                icon: const Icon(
                  Icons.post_add,
                  size: 30,
                ),
                title: const Text('Posts'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.blue[200],
                icon: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: const Text('Users'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.pinkAccent[100],
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: const Text('Settings'),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:stacked_architectiure/ui/views/home/home_view.dart';
import 'package:stacked_architectiure/ui/views/posts/post_details_view.dart';
import 'package:stacked_architectiure/ui/views/posts/posts_view.dart';
import 'package:stacked_architectiure/ui/views/settings/settings_view.dart';
import 'package:stacked_architectiure/ui/views/startup/startup_view.dart';
import 'package:stacked_architectiure/ui/views/users/user_profile_view.dart';
import 'package:stacked_architectiure/ui/views/users/users_view.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      initial: true,
      children: [
        AutoRoute(
          path: 'Posts',
          page: EmptyRouterPage,
          name: 'PostsRouter',
          children: [
            AutoRoute(path: '', page: PostsView),
            AutoRoute(path: ':id', page: PostDetailsView),
          ],
        ),
        AutoRoute(
          path: 'Users',
          page: EmptyRouterPage,
          name: 'UsersRouter',
          children: [
            AutoRoute(path: '', page: UsersView),
            AutoRoute(path: ':uid', page: UserProfileView),
          ],
        ),
        AutoRoute(
          path: 'Settings',
          page: SettingsView,
          name: 'SettingsRouter',
        ),
      ],
    ),
    AutoRoute(path: 'StartupView', page: StartupView),
  ],
)
// extend the generated private router
class $AppRouter {}

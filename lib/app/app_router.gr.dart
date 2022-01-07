// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i9;

import '../ui/views/home/home_view.dart' as _i1;
import '../ui/views/posts/post_details_view.dart' as _i6;
import '../ui/views/posts/posts_view.dart' as _i5;
import '../ui/views/settings/settings_view.dart' as _i4;
import '../ui/views/startup/startup_view.dart' as _i2;
import '../ui/views/users/user_profile_view.dart' as _i8;
import '../ui/views/users/users_view.dart' as _i7;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    StartupRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.StartupView());
    },
    PostsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    UsersRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsView());
    },
    PostsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PostsView());
    },
    PostDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PostDetailsRouteArgs>(
          orElse: () => PostDetailsRouteArgs(id: pathParams.getString('id')));
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.PostDetailsView(key: args.key, id: args.id));
    },
    UsersRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.UsersView());
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () => UserProfileRouteArgs(uid: pathParams.getString('uid')));
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.UserProfileView(key: args.key, uid: args.uid));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/', children: [
          _i3.RouteConfig(PostsRouter.name,
              path: 'Posts',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig(PostsRoute.name,
                    path: '', parent: PostsRouter.name),
                _i3.RouteConfig(PostDetailsRoute.name,
                    path: ':id', parent: PostsRouter.name)
              ]),
          _i3.RouteConfig(UsersRouter.name,
              path: 'Users',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig(UsersRoute.name,
                    path: '', parent: UsersRouter.name),
                _i3.RouteConfig(UserProfileRoute.name,
                    path: ':uid', parent: UsersRouter.name)
              ]),
          _i3.RouteConfig(SettingsRouter.name,
              path: 'Settings', parent: HomeRoute.name)
        ]),
        _i3.RouteConfig(StartupRoute.name, path: 'StartupView')
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.StartupView]
class StartupRoute extends _i3.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: 'StartupView');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class PostsRouter extends _i3.PageRouteInfo<void> {
  const PostsRouter({List<_i3.PageRouteInfo>? children})
      : super(PostsRouter.name, path: 'Posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class UsersRouter extends _i3.PageRouteInfo<void> {
  const UsersRouter({List<_i3.PageRouteInfo>? children})
      : super(UsersRouter.name, path: 'Users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i4.SettingsView]
class SettingsRouter extends _i3.PageRouteInfo<void> {
  const SettingsRouter() : super(SettingsRouter.name, path: 'Settings');

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i5.PostsView]
class PostsRoute extends _i3.PageRouteInfo<void> {
  const PostsRoute() : super(PostsRoute.name, path: '');

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i6.PostDetailsView]
class PostDetailsRoute extends _i3.PageRouteInfo<PostDetailsRouteArgs> {
  PostDetailsRoute({_i9.Key? key, required String id})
      : super(PostDetailsRoute.name,
            path: ':id',
            args: PostDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'PostDetailsRoute';
}

class PostDetailsRouteArgs {
  const PostDetailsRouteArgs({this.key, required this.id});

  final _i9.Key? key;

  final String id;

  @override
  String toString() {
    return 'PostDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.UsersView]
class UsersRoute extends _i3.PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: '');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i8.UserProfileView]
class UserProfileRoute extends _i3.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i9.Key? key, required String uid})
      : super(UserProfileRoute.name,
            path: ':uid',
            args: UserProfileRouteArgs(key: key, uid: uid),
            rawPathParams: {'uid': uid});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.uid});

  final _i9.Key? key;

  final String uid;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, uid: $uid}';
  }
}

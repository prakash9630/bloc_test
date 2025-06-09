// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:bloc_test/services/home/presentatin/views/home_screen.dart'
    as _i1;
import 'package:bloc_test/services/ip_info/presentation/screen/Ip_screen.dart'
    as _i2;
import 'package:bloc_test/services/jokes/presentation/screen/jokes_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i5.Key? key, List<_i4.PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return _i1.HomeScreen(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.IpScreen]
class IpRoute extends _i4.PageRouteInfo<void> {
  const IpRoute({List<_i4.PageRouteInfo>? children})
    : super(IpRoute.name, initialChildren: children);

  static const String name = 'IpRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.IpScreen();
    },
  );
}

/// generated route for
/// [_i3.JokesScreen]
class JokesRoute extends _i4.PageRouteInfo<void> {
  const JokesRoute({List<_i4.PageRouteInfo>? children})
    : super(JokesRoute.name, initialChildren: children);

  static const String name = 'JokesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.JokesScreen();
    },
  );
}

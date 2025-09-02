// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:mini_task/presentation/features/first_screen/screens/first_screen.dart'
    as _i1;
import 'package:mini_task/presentation/features/main_screen/main_screen.dart'
    as _i2;
import 'package:mini_task/presentation/features/second_screen/screen/second_screen.dart'
    as _i3;
import 'package:mini_task/presentation/features/user_screen/screen/user_screen.dart'
    as _i4;

/// generated route for
/// [_i1.FirstScreen]
class FirstRoute extends _i5.PageRouteInfo<void> {
  const FirstRoute({List<_i5.PageRouteInfo>? children})
    : super(FirstRoute.name, initialChildren: children);

  static const String name = 'FirstRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.FirstScreen();
    },
  );
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i5.PageRouteInfo<void> {
  const SecondRoute({List<_i5.PageRouteInfo>? children})
    : super(SecondRoute.name, initialChildren: children);

  static const String name = 'SecondRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.SecondScreen();
    },
  );
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdRoute extends _i5.PageRouteInfo<void> {
  const ThirdRoute({List<_i5.PageRouteInfo>? children})
    : super(ThirdRoute.name, initialChildren: children);

  static const String name = 'ThirdRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.ThirdScreen();
    },
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

@Injectable(order: -1)
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => _routes;

  static final _routes = <AutoRoute>[
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      path: '/home',
    ),
    AutoRoute(
      page: NewsRoute.page,
      path: '/news',
    ),
  ];
}

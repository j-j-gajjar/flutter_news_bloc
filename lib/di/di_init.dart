import 'package:dio/dio.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';
import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';

import '../domain/api/api_provider.dart';
import '../navigation/router.dart';

// import 'di_init.config.dart';

// @injectableInit
// GetIt initDI(GetIt getIt) => getIt.init();
// @injectableInit
void initDI(GetIt getIt) {
  getIt
    ..registerSingleton(Dio())
    ..registerSingleton(AppRouter())
    ..registerSingleton(ApiProvider(getIt<Dio>()))
    ..registerSingleton(HomeBloc(getIt<ApiProvider>()))
    ..registerFactory<DrawerBloc>(() => DrawerBloc());
}

// GetIt _initGetIt(GetIt getIt) {
//   getIt.registerSingleton<AppRouter>(AppRouter());
//   return getIt;
// }

import 'package:dio/dio.dart';
import 'package:flutter_news_bloc/domain/api/api_provider.dart';
import 'package:flutter_news_bloc/navigation/router.dart';
import 'package:flutter_news_bloc/presentation/HomeScreen/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// @injectableInit
// GetIt initDI(GetIt getIt) => getIt.init();
@injectableInit
void initDI(GetIt getIt) {
  getIt
    ..registerSingleton(Dio())
    ..registerSingleton(AppRouter())
    ..registerSingleton(ApiProvider(getIt<Dio>()))
    ..registerSingleton(HomeBloc(getIt<ApiProvider>()));
}

// GetIt _initGetIt(GetIt getIt) {
//   getIt.registerSingleton<AppRouter>(AppRouter());
//   return getIt;
// }

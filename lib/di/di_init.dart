import 'package:flutter_news_bloc/di/di_init.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectableInit
GetIt initDI(GetIt getIt) => getIt.init();

// GetIt _initGetIt(GetIt getIt) {
//   getIt.registerSingleton<AppRouter>(AppRouter());
//   return getIt;
// }

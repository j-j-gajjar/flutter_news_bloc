import 'package:flutter_news_bloc/navigation/router.dart';
import 'package:get_it/get_it.dart';

GetIt initDI(GetIt getIt) => _initGetIt(getIt);

GetIt _initGetIt(GetIt getIt) {
  getIt.registerSingleton<AppRouter>(AppRouter());
  return getIt;
}

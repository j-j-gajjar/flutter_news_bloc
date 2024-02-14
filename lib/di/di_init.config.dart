// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_news_bloc/domain/api/api_provider.dart' as _i3;
import 'package:flutter_news_bloc/navigation/router.dart' as _i5;
import 'package:flutter_news_bloc/presentation/HomeScreen/bloc/home_bloc.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ApiProvider>(() => _i3.ApiProvider(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i5.AppRouter>(() => _i5.AppRouter());
    gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(gh<_i3.ApiProvider>()));
    return this;
  }
}

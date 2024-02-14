import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/di/di_container.dart';
import 'package:flutter_news_bloc/navigation/router.dart';
import 'package:flutter_news_bloc/presentation/HomeScreen/bloc/home_bloc.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: diContainer<AppRouter>().config(),
      builder: (_, __) => BlocProvider(
        create: (context) => diContainer<HomeBloc>(),
        child: const HomeScreen(),
      ),
    );
  }
}

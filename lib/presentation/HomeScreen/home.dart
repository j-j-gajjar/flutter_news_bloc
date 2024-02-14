import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/presentation/HomeScreen/bloc/home_bloc.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) => const NewsCardWidget(),
            padding: const EdgeInsets.all(8),
            itemCount: 6,
          );
        },
      ),
    );
  }
}

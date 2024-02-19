import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/di/di_container.dart';
import 'package:flutter_news_bloc/presentation/HomeScreen/bloc/home_bloc.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News With Bloc"),
      ),
      body: BlocProvider(
        create: (context) => diContainer<HomeBloc>()..add(const HomeEvent.fetchAllNews()),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.whenOrNull(
              allNewsState: (articles, isLoading, isLast) {
                if (isLast) {
                  showSnackBar(context, "You caught up with all news!");
                }
              },
            );
          },
          builder: (context, state) {
            return state.when(
              allNewsState: (articles, isLoading, isLast) => ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) => Column(
                  children: [NewsCardWidget(article: articles[index]), if (index == (articles.length - 1)) CustomLoader(isLoading: isLoading)],
                ),
                padding: const EdgeInsets.all(8),
                itemCount: articles.length,
              ),
              initialState: (isLoading) => const CustomLoader(isLoading: true),
              errorState: (errorMessage) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(errorMessage),
                      MaterialButton(
                        onPressed: () {
                          diContainer<HomeBloc>().add(const HomeEvent.fetchAllNews());
                        },
                        color: Colors.amber,
                        child: const Text("Refresh"),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      diContainer<HomeBloc>().add(Paginate(context));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/di/di_container.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocProvider(
        create: (context) => diContainer<DrawerBloc>()..add(const DrawerEvent.started()),
        child: BlocConsumer<DrawerBloc, DrawerState>(
          listener: (context, state) => state.whenOrNull(
            loaded: (_, category, country, sources) {
              if (category.isNotEmpty || country.isNotEmpty || sources.isNotEmpty) {
                diContainer<HomeBloc>().add(HomeEvent.filterAllNews(category: category, country: country, sources: sources));
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.openEndDrawer();
                }
              }
              return null;
            },
          ),
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loaded: (List<SideDrawerModel> sideDrawerModel, _, __, ___) => Drawer(
                child: SafeArea(
                  child: ListView(
                    children: sideDrawerModel
                        .map(
                          (SideDrawerModel sideDrawerModel) => ExpansionTile(
                            title: Text(sideDrawerModel.title),
                            children: sideDrawerModel.list
                                .map(
                                  (e) => InkWell(
                                    child: ListTile(title: Text(e.name)),
                                    onTap: () {
                                      diContainer<DrawerBloc>().add(DrawerEvent.filterData(sideDrawerModel.title, e.name));
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

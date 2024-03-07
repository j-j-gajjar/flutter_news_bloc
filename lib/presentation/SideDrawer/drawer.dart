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
        child: BlocBuilder<DrawerBloc, DrawerState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loaded: (List<SideDrawerModel> sideDrawerModel) => Drawer(
                child: SafeArea(
                  child: ListView(
                    children: sideDrawerModel
                        .map(
                          (SideDrawerModel sideDrawerModel) => ExpansionTile(
                            title: Text(sideDrawerModel.title),
                            children: sideDrawerModel.list
                                .map((e) => InkWell(
                                      child: ListTile(title: Text(e.name)),
                                      onTap: () {
                                        if (scaffoldKey.currentState!.isDrawerOpen) {
                                          scaffoldKey.currentState!.openEndDrawer();
                                        }
                                        diContainer<DrawerBloc>().add(DrawerEvent.filterNews(category: e.code!));
                                      },
                                    ))
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

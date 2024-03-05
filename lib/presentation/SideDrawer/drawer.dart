import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(
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
                        children: sideDrawerModel.list.map((e) => ListTile(title: Text(e.name))).toList(),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}

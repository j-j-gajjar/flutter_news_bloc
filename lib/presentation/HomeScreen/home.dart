import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/utils/extention/widget_extension.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://www.livemint.com/lm-img/img/2024/02/07/600x338/Pragati_Maidan_tunnel_1707304458064_1707304458481.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 240,
              ),
              const Text(
                "NEWS TITILE",
                textAlign: TextAlign.left,
              ).padding()
            ],
          ),
        ),
        padding: const EdgeInsets.all(8),
        itemCount: 6,
      ),
    );
  }
}

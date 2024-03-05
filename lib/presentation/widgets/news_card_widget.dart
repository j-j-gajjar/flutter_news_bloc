import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:flutter_news_bloc/navigation/router.dart';
import 'package:flutter_news_bloc/presentation/presenration.dart';
import 'package:flutter_news_bloc/utils/extention/widget_extension.dart';

import '../../di/di_container.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.article,
    required this.index,
  });
  final Article article;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: article.urlToImage ?? '',
                  errorWidget: (_, __, ___) => const SizedBox(),
                  fadeInCurve: Curves.easeInCirc,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Text(
              article.title ?? '',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, color: article.isLiked ? Colors.red : Colors.black),
              maxLines: 3,
            ).padding()
          ],
        ),
      ),
      onDoubleTap: () {
        diContainer<HomeBloc>().add(HomeEvent.like(index));
      },
      onTap: () {
        diContainer<AppRouter>().push(NewsRoute(article: article));
      },
    );
  }
}

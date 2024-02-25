import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:flutter_news_bloc/utils/extention/widget_extension.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
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
            maxLines: 2,
          ).padding()
        ],
      ),
    );
  }
}

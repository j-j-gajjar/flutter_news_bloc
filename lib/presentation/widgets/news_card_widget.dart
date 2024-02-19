import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/domain/model/news_res.dart';
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
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  article.urlToImage ?? '',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            height: 240,
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

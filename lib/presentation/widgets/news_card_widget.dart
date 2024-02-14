import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/utils/extention/widget_extension.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
  });

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
              image: const DecorationImage(
                image: NetworkImage(
                  'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            height: 240,
          ),
          const Text(
            "retrofitretrofitretrofitretrofitretrofit",
            textAlign: TextAlign.left,
            maxLines: 2,
          ).padding()
        ],
      ),
    );
  }
}

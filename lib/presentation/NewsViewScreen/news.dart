import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';

@RoutePage()
class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final WebViewController _webViewController = WebViewController();

  @override
  void initState() {
    super.initState();
    _webViewController.loadRequest(Uri.parse(widget.article.url ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (widget.article.title ?? '-'),
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: WebViewWidget(controller: _webViewController),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part "news_res.freezed.dart";
part "news_res.g.dart";

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required String status,
    required int totalResults,
    required List<Article> articles,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) => _$NewsResponseFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    DateTime? publishedAt,
    String? content,
    @Default(false) bool isLiked,
  }) = _Article;
  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    required String? id,
    required String? name,
  }) = _Source;
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

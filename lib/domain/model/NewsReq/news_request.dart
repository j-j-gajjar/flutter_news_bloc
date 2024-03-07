// To parse this JSON data, do
//
//     final newsRequest = newsRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'news_request.freezed.dart';
part 'news_request.g.dart';

NewsRequest newsRequestFromJson(String str) => NewsRequest.fromJson(json.decode(str));

String newsRequestToJson(NewsRequest data) => json.encode(data.toJson());

@freezed
class NewsRequest with _$NewsRequest {
  const factory NewsRequest({
    required String apiKey,
    @Default(10) int pageSize,
    @Default(1) int page,
    @Default("IN") String country,
    @Default("") String sortBy,
    @Default("") String q,
    @Default("") String domains,
    @Default("") String category,
    @Default("") String sources,
  }) = _NewsRequest;

  factory NewsRequest.fromJson(Map<String, dynamic> json) => _$NewsRequestFromJson(json);
}

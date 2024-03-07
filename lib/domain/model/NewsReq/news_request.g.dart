// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsRequestImpl _$$NewsRequestImplFromJson(Map<String, dynamic> json) =>
    _$NewsRequestImpl(
      apiKey: json['apiKey'] as String,
      pageSize: json['pageSize'] as int? ?? 10,
      page: json['page'] as int? ?? 1,
      country: json['country'] as String? ?? "IN",
      sortBy: json['sortBy'] as String? ?? "",
      q: json['q'] as String? ?? "",
      domains: json['domains'] as String? ?? "",
      category: json['category'] as String? ?? "",
      sources: json['sources'] as String? ?? "",
    );

Map<String, dynamic> _$$NewsRequestImplToJson(_$NewsRequestImpl instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'pageSize': instance.pageSize,
      'page': instance.page,
      'country': instance.country,
      'sortBy': instance.sortBy,
      'q': instance.q,
      'domains': instance.domains,
      'category': instance.category,
      'sources': instance.sources,
    };

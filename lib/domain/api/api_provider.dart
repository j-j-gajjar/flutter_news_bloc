import 'package:dio/dio.dart';
import 'package:flutter_news_bloc/domain/model/model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_provider.g.dart';

@injectable
@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class ApiProvider {
  @factoryMethod
  factory ApiProvider(Dio dio, {String baseUrl}) = _ApiProvider;

  @GET("/top-headlines")
  Future<NewsResponse> getNews(@Queries() Map<String, dynamic> queries);
}

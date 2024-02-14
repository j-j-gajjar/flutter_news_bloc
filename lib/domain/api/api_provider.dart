import 'package:dio/dio.dart';
import 'package:flutter_news_bloc/domain/model/news_res.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_provider.g.dart';

@injectable
@RestApi()
abstract class ApiProvider {
  @factoryMethod
  factory ApiProvider(Dio dio, {String baseUrl}) = _ApiProvider;

  @GET("/getNews")
  Future<NewsResponse> getNews(@Queries() Map<String, dynamic> queries);
}

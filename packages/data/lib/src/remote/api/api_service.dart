import 'package:data/src/remote/api/request_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

@RestApi()
abstract class ApiService {
  // factory ApiService() {
  //   final apiLogger = TalkerDioLogger(talker: Talker(), settings: const TalkerDioLoggerSettings());
  //
  //   final baseOptions = BaseOptions(connectTimeout: const Duration(seconds: 5), receiveTimeout: const Duration(seconds: 5));
  //
  //   Dio dio = Dio();
  //   dio.options = baseOptions;
  //   dio.interceptors.clear();
  //   dio.interceptors.add(RequestInterceptor());
  //   // dio.interceptors.add(TokenInterceptor(dio));
  //
  //   if (!kReleaseMode) {
  //     dio.interceptors.add(apiLogger);
  //   }
  //
  //   final baseUrl = dotenv.env['BASE_URL'];
  //
  //   return _ApiService(dio, baseUrl: baseUrl);
  // }

  // @GET("/posts")
  // Future<dynamic> getPost();
  //
  // @GET("/token")
  // Future<dynamic> getRefreshToken();
  //
  // @GET("/token/revoke")
  // Future<dynamic> signOut();
}

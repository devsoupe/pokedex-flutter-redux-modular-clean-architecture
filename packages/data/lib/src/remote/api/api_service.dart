// import 'package:data/src/remote/api/request_interceptor.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// // import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:retrofit/retrofit.dart';
//
// @RestApi()
// abstract class ApiService {
//   factory ApiService() {
//     final prettyDioLogger = PrettyDioLogger(
//       request: true,
//       requestHeader: true,
//       requestBody: true,
//       responseHeader: true,
//       error: true,
//       compact: true,
//     );
//
//     final baseOptions = BaseOptions(
//         connectTimeout: const Duration(seconds: 5),
//         receiveTimeout: const Duration(seconds: 5));
//
//     Dio dio = Dio();
//     dio.options = baseOptions;
//     dio.interceptors.clear();
//     dio.interceptors.add(RequestInterceptor());
//     // dio.interceptors.add(TokenInterceptor(dio));
//
//     if (!kReleaseMode) {
//       dio.interceptors.add(prettyDioLogger);
//     }
//
//     return _ApiService(dio, baseUrl:"https://jsonplaceholder.typicode.com");
//   }
//
//   // @GET("/posts")
//   // Future<dynamic> getPost();
//   //
//   // @GET("/token")
//   // Future<dynamic> getRefreshToken();
//   //
//   // @GET("/token/revoke")
//   // Future<dynamic> signOut();
// }
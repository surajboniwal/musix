import 'package:dio/dio.dart';

import 'helpers.dart';

class NetworkManager {
  final Dio dio;

  const NetworkManager._(this.dio);

  factory NetworkManager() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://jiosaavn.com/api.php?_format=json&_marker=0&api_version=4&ctx=web6dot0&',
      ),
    );

    return NetworkManager._(dio);
  }

  Future<Response<T>> request<T>(
    RequestMethod method,
    String url, {
    data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.request(
      url,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        method: method.value,
        headers: headers,
      ),
    );
  }
}

enum RequestMethod {
  get,
  head,
  post,
  put,
  delete,
  connect,
  options,
  trace,
  patch,
}

extension RequestMethodX on RequestMethod {
  String get value => getEnumValue(this).toUpperCase();
}

import 'dart:developer';

import 'package:core/core.dart';
import 'package:dio/dio.dart';

class Api {
  late Dio dio;
  final BuildConfig buildConfig;

  Api({
    required this.buildConfig,
  }) {
    dio = Dio(BaseOptions(
      baseUrl: buildConfig.baseUrl,
      receiveTimeout: 15000,
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    dio.interceptors.addAll({
      AppInterceptors(buildConfig: buildConfig, dio: dio),
    });
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;
  final BuildConfig buildConfig;

  AppInterceptors({required this.dio, required this.buildConfig});

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    dio.options.baseUrl = buildConfig.baseUrl;

    log(err.requestOptions.path.toString());
    log(err.requestOptions.baseUrl.toString());
    log(err.response!.statusCode.toString());
    // ignore: avoid_print
    print(err.response?.data..toString());

    switch (err.type) {
      case DioErrorType.connectTimeout:
        throw ConnectTimeoutException(err.requestOptions);
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(res: err.response, r: err.requestOptions);
          case 401:
            throw UnauthorizedException(
                res: err.response, r: err.requestOptions);
          case 404:
            throw NotFoundException(res: err.response, r: err.requestOptions);
          case 409:
            throw ConflictException(res: err.response, r: err.requestOptions);
          case 500:
            throw InternalServerErrorException(
                res: err.response, r: err.requestOptions);
          default:
            throw UnknownException(err.requestOptions);
        }
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    dio.options.baseUrl = buildConfig.baseUrl;
    handler.next(response);
  }
}

class BadRequestException extends DioError {
  Response? res;
  BadRequestException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    if (res == null) {
      return 'Invalid request';
    } else {
      if (res?.data['msg'] is! String) {
        return res?.data['msg']['msg'];
      } else {
        return res?.data['msg'];
      }
    }
  }
}

class ConflictException extends DioError {
  Response? res;
  ConflictException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return res == null ? 'Conflict occurred' : res?.data['msg'];
  }
}

class ConnectTimeoutException extends DioError {
  ConnectTimeoutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Connection timeout';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}

class InternalServerErrorException extends DioError {
  Response? res;
  InternalServerErrorException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return res == null ? 'Server Error' : res?.data['msg'];
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection to the internet has been lost.\nPlease try again';
  }
}

class NotFoundException extends DioError {
  Response? res;
  NotFoundException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    // ignore: avoid_print
    if (res == null) {
      return 'The requested information could not be found';
    } else {
      // ignore: avoid_print
      print(res!.data['msg']);

      return res!.data['msg'];
    }
  }
}

class UnauthorizedException extends DioError {
  Response? res;
  UnauthorizedException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Access denied';
  }
}

class UnknownException extends DioError {
  UnknownException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

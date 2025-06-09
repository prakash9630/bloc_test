import 'dart:convert';
import 'package:bloc_test/core/util/toast_message.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../core/share_prefrences/share_prefrences.dart';
import '../core/util/check_connectivity.dart';
import '../di/getit_confit.dart';

class Failure {
  String? message;
  int? statusCode;

  Failure({this.message, this.statusCode});
}

class RequestCall {
  RequestCall(this.dio);

  final Dio dio;

  Future<T> callRequest<T>({
    required Future<Response<T>> Function(Dio dio) request,
    required Function(dynamic data) onResponse,
  }) async {
    try {
      final status = [200, 201];
      final response = await request(dio);
      if (status.contains(response.statusCode)) {
        if (response.data is Map<String, dynamic>) {
          return onResponse(response.data);
        } else {
          return onResponse(jsonDecode(response.data as dynamic));
        }
      } else {
        if (kDebugMode) {
          print(response.data);
        }
        return onResponse(response.data);
      }
    } catch (e) {
      throw Error();
    }
  }

  Future<T> checkNetworkAndCallRequest<T>({
    String? cacheKey,
    required Future<Response<T>> Function(Dio dio) request,
    required Function(dynamic data) onResponse,
  }) async {
    try {
      final isConnected = await isInternetAvailable();
      if (isConnected) {
        final status = [200, 201];
        final response = await request(dio);
        if (status.contains(response.statusCode)) {
          if (response.data is Map<String, dynamic>) {
            if(cacheKey != null){
              storeObject(cacheKey, response.data as Map<String, dynamic>);
            }
            return onResponse(response.data);
          } else {
            return onResponse(jsonDecode(response.data as dynamic));
          }
        } else {
          if (kDebugMode) {
            print(response.data);
          }
          return onResponse(response.data);
        }
      } else {
        if(cacheKey != null){
          return onResponse(getObject(cacheKey));
        }else{
          showErrorToast("Please check your internet connection");
          throw Error();
        }
      }
    } catch (e) {
      throw Error();
    }
  }
}

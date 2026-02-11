import 'package:country_explorer/core/network/api_client.dart';
import 'package:country_explorer/core/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'core_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final apiClient = ApiClient();
  ref.onDispose(() => apiClient.dio.close());
  return apiClient.dio;
}

@Riverpod(keepAlive: true)
ApiService apiService(Ref ref) {
  return ApiService(ref.watch(dioProvider));
}
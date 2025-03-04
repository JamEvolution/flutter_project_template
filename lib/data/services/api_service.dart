import 'package:dio/dio.dart';

import '../../core/constants/app_constants.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal(AppConstants.apiUrl);

  factory ApiService() {
    return _instance;
  }

  final Dio _dio;

  ApiService._internal(String baseUrl)
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: Duration(milliseconds: AppConstants.connectTimeout),
          receiveTimeout: Duration(milliseconds: AppConstants.receiveTimeout),
        ));

  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response.data;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response.data;
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  Future<Map<String, dynamic>> put(
      String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response.data;
    } catch (e) {
      throw Exception('Failed to put data: $e');
    }
  }

  Future<void> delete(String endpoint) async {
    try {
      await _dio.delete(endpoint);
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }
}

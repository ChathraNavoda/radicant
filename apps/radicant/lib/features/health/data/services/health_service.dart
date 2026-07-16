import 'package:dio/dio.dart';

import '../../../../core/network/api_client.dart';
import '../models/health_model.dart';

class HealthService {
  Future<HealthModel> getHealth() async {
    final Response response = await ApiClient.dio.get('/health');

    return HealthModel.fromJson(response.data as Map<String, dynamic>);
  }
}

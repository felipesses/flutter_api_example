import 'package:api_consuming_example/services/client_interface.dart';
import 'package:dio/dio.dart';

class DioClient implements IHttpClient {
  final dio = Dio();
  @override
  Future get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}

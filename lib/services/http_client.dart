import 'dart:convert';

import 'package:api_consuming_example/services/client_interface.dart';
import 'package:http/http.dart' as http;

class HttpPackageClient implements IHttpClient {
  @override
  Future get(String url) async {
    final response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}

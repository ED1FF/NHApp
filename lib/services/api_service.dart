import 'package:dio/dio.dart';

const String _baseUrl = "https://nh-app-api.herokuapp.com/";

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
  ));

  Future<String> getDoujins() async {
    try {
      final Response<dynamic> responce = await _dio.get('/api/doujins/351485');
      return responce.data.toString();
    } catch (e) {
      print("Exception occured: $e");
      return e;
    }
  }
}

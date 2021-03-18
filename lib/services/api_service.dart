import 'package:dio/dio.dart';

const String _baseUrl = "https://nh-app-api.herokuapp.com/";

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
  ));

  Future<List<dynamic>> getDoujins() async {
    try {
      final Response<dynamic> responce = await _dio.get('/api/doujins');
      return responce.data;
    } catch (e) {
      print("Exception occured: $e");
      return e;
    }
  }
}

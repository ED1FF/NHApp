import 'package:dio/dio.dart';

const String _baseUrl = 'https://nh-app-api.herokuapp.com/';

class DoujinsService {
  factory DoujinsService.filled() {
    final Dio dio = Dio(BaseOptions(
      baseUrl: _baseUrl
      )
    );
    return DoujinsService._(dio);
  }

  DoujinsService._(this._dio);

  final Dio _dio;

  Future<String> getDoujins() async {
    final Response<dynamic> responce = await _dio.get('/api/doujins');
    return responce.data;
  }
}

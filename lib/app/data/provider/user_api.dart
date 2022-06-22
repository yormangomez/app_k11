import 'dart:io';

import 'package:dio/dio.dart';
import 'package:k_11_app/app/data/models/user_model.dart';

class UserAPI {
  final Dio _dio = Dio();

  Future<dynamic> getUser() async {
    try {
      final List users = [];
      final response = await _dio.get('https://reqres.in/api/users?page=1');

      if (response.statusCode == 200) {
        final user = (response.data['data']);

        return user;
      } else {
        return Future.error('Ocurrio un error al obtener la respuesta');
      }
    } on SocketException {
      return Future.error('Se perdió la conexión con el servidor, por favor verifique su conexión a internet');
    } on Exception {
      return Future.error('Ocurrio un error al obtener la respuesta del servidor');
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'repository.dart';

//Esse serviço deve fazer a requisição para a API do pokemon
class ApiService {
  static const baseUrl = 'pokeapi.co/api/v2';
  static const nome = 'ditto';

  static Future<dynamic> getRepositories() async {
    var url = Uri.https(baseUrl, '/pokemon/$nome');
    var response = await http.get(url);

    var repositories = (json.decode(response.body))
        .map((item) => Repository.fromJson(item))
        .toList();

    // print(repositories);

    return repositories;
  }
}
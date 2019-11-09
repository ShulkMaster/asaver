import 'dart:convert';
import 'package:http/http.dart';

class HttpRequest{

  final String url = 'https://pokeapi.co/api/v2/pokemon/';
  final int count = 20;
  final headers = {"Accept": "application/json"};

  Future<List<dynamic>> getPokemons(int offset) async {
    var endpoint = '$url?offset=$offset&limit=$count';
    print(endpoint);
    var res = await get(Uri.encodeFull(endpoint), headers: headers);
    if (res.statusCode != 200) {
      return List<dynamic>();
    }
    return jsonDecode(res.body)['results'];
  }

  Future<Map<String, dynamic>>getPokemonInfo(String url) async{
    var res = await get(Uri.encodeFull(url), headers: headers);
    if (res.statusCode != 200) {
      return Map<String, dynamic>();
    }
    return jsonDecode(res.body);
  }


}
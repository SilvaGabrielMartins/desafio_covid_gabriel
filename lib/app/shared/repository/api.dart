import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  static Future getContinentes() async {
    var url = 'https://disease.sh/v3/covid-19/continents?yesterday=true';
    return await http.get(url);
  }

  static Future getPais(String pais) async {
    var url =
        'https://disease.sh/v3/covid-19/countries/' + pais + '?strict=true';
    print(url);
    return await http.get(url);
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

// Future main() async {
//   final json = fetch();
//   print(json);
// }

// Future<Map> fetch() async {
//   var url = 'https://disease.sh/v3/covid-19/continents?yesterday=true';
//   var response = await http.get(url);
//   print(response.body);
//   var json = jsonDecode(response.body);
//   return json;
// }
class API {
  static Future getContinentes() async {
    var url = 'https://disease.sh/v3/covid-19/continents?yesterday=true';
    return await http.get(url);
  }
}

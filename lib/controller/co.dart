import 'dart:convert' as convert;

import 'package:flutter_application_3/model/model.dart';
import 'package:http/http.dart' as http;

class AdviceController {
  Future<Advice> fetchAdvice() async {
    String url = "https://api.adviceslip.com/advice";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var responseBody = convert.jsonDecode(response.body);
      return Advice.fromJson(responseBody);
    } else {
      throw Exception('Failed to load advice');
    }
  }
}
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

// class AdviceController {
//   Future<String> fetchAdvice() async {
//     String url = "https://api.adviceslip.com/advice";
//     var response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       var responseBody = convert.jsonDecode(response.body);
//       return responseBody['slip']['advice'];
//     } else {
//       throw Exception('Failed to load advice');
//     }
//   }
// }

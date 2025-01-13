
/*
 * lib/routes/api.dart
 *
 * A service class for handling API requests related to user data
 *
 * Contains a method `getUserData()` that makes a GET request to the API and returns a list of 
 * `UserModel` objects. The data is parsed from JSON and includes error handling
 */



import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {

  final String baseLaravelUrl = 'http://localhost:8000/api';

  Future<List<UserModel>> getUserData() async {
    final response = await http.get(Uri.parse('$baseLaravelUrl/users'));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse['success']) {
        List<dynamic> data = jsonResponse['data'];
        return data.map((dynamic item) => UserModel.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } else {
      throw Exception('Failed to load data');
    }
  }

}

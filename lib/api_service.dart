import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user_model.dart';

class ApiService {
  Future<UserModel> fetchUser() async {
    final response = await http.get(
      Uri.parse('https://randomuser.me/api/'),
    );
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return UserModel.fromJson(jsonResponse['results'][0]);
    } else {
      throw Exception('Failed to load user');
    }
  }
}

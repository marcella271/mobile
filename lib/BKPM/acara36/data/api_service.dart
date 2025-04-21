import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user.dart';


class ApiService {
  final String baseUrl = 'https://reqres.in/api';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users?page=1'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> usersJson = data['data'];
      return usersJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}

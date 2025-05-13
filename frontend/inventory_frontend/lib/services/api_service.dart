import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences.dart';

class ApiService {
  static const String baseUrl = 'http://localhost:8000/api';
  final SharedPreferences _prefs;

  ApiService(this._prefs);

  Future<String?> get token async => _prefs.getString('token');

  Future<Map<String, String>> get _headers async {
    final token = await this.token;
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/token/'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        await _prefs.setString('token', data['access']);
        return data;
      } else {
        throw Exception('Failed to login: ${response.body}');
      }
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getInventory() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/inventory/'),
        headers: await _headers,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed to load inventory: ${response.body}');
      }
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }

  Future<void> logout() async {
    await _prefs.remove('token');
  }
} 
import 'package:flutter/material.dart';
import 'package:shared_preferences.dart';
import '../services/api_service.dart';

class AuthProvider with ChangeNotifier {
  final ApiService _apiService;
  bool _isAuthenticated = false;
  String? _token;

  AuthProvider(this._apiService) {
    _checkAuthStatus();
  }

  bool get isAuthenticated => _isAuthenticated;
  String? get token => _token;

  Future<void> _checkAuthStatus() async {
    _token = await _apiService.token;
    _isAuthenticated = _token != null;
    notifyListeners();
  }

  Future<void> login(String username, String password) async {
    try {
      final response = await _apiService.login(username, password);
      _token = response['access'];
      _isAuthenticated = true;
      notifyListeners();
    } catch (e) {
      _isAuthenticated = false;
      _token = null;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> logout() async {
    await _apiService.logout();
    _isAuthenticated = false;
    _token = null;
    notifyListeners();
  }
} 
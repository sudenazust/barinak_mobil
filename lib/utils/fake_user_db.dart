import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class FakeUserDB {
  static List<Map<String, String>> _users = [];

  static Future<void> loadUsers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? usersJson = prefs.getString('saved_users');
    if (usersJson != null) {
      var decoded = jsonDecode(usersJson); // Tip belirtme, gerek yok
      _users = (decoded as List).map<Map<String, String>>((user) {
        return {
          'email': user['email'] as String,
          'password': user['password'] as String,
        };
      }).toList();
    }
    print(_users);
  }


  static Future<void> _saveUsers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String usersJson = jsonEncode(_users);
    await prefs.setString('saved_users', usersJson);
  }

  static Future<bool> register(String email, String password) async {
    if (_users.any((user) => user['email'] == email)) {
      return false; // Zaten kayıtlı
    }
    _users.add({'email': email, 'password': password});
    await _saveUsers();
    return true;
  }

  static bool login(String email, String password) {
    return _users.any(
          (user) => user['email'] == email && user['password'] == password,
    );
  }
}

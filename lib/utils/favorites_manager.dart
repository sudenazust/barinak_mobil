import 'package:shared_preferences/shared_preferences.dart';

class FavoritesManager {
  static const String _key = 'favorite_animals';

  static Future<void> saveFavorites(List<String> favorites) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, favorites);
  }

  static Future<List<String>> loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }
}

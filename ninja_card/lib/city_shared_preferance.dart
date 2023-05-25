
import 'package:shared_preferences/shared_preferences.dart';

class CitySharedPreferance{
  static SharedPreferences? _preference;
  static const keyCity = "Arendal";

  static Future init() async =>
      _preference = await SharedPreferences.getInstance();

  static Future setCity(String city) async =>
    await _preference?.setString(keyCity, city);

   String? getCity() => _preference?.getString(keyCity);



}
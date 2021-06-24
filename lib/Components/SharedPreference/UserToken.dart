// Create storage



import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, dynamic>> headersMap() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  Map<String, dynamic> headersData = {
    'Authorization': "Bearer ${preferences.get("token")}",

    "Accept": "application/json"
  };
  print("token: headers ${preferences.get("token")}");
  preferences.setString('token',preferences.get("token").toString());

  return headersData;
}

Future<Map<String, dynamic>> headersMapWithoutToken() async {
  Map<String, dynamic> headersData = {
    // 'Authorization': preferences.getString("token"),

    // "Content-Type":"application/json"
    "Accept": "application/json"
  };
  return headersData;
}
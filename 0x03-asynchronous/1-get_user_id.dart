import "1-util.dart";
import 'dart:convert';

Future<String> getUserId() async {
  String userInfo = await fetchUserData();
  var decodedUser = jsonDecode(userInfo);
  return decodedUser["id"];
}
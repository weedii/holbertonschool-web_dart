import "3-util.dart";
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String res = await fetchUserData();
    var decodedUser = jsonDecode(res);
    return "Hello ${decodedUser["username"]}";
  } catch (e) {
    print("error caught: $e");
    return "";
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();
    if (isLoggedIn) {
      print("There is a user: true");
      return await greetUser();
    } else {
      print("There is a user: false");
      return "Wrong credentials";
    }
  } catch (e) {
    print("error caught: $e");
    return "";
  }
}
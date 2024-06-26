import "1-util.dart";

Future<String> getUserId() async {
  String userID = await fetchUserData();
  print(userID);
}
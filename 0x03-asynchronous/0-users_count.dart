import "0-util.dart";

Future<void> usersCount() async {
  int nbUsers = await fetchUsersCount();
  print(nbUsers);
}
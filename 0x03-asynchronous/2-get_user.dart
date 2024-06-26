import "2-util.dart";

Future<void> getUser() async {
  try {
    String res = await fetchUser();
  } catch (e) {
    print("error caught: $e");
  }
}

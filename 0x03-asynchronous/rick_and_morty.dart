import "dart:convert";
import "package:http/http.dart" as http;

Future<void> printRmCharacters() async {
  try {
    final res =
        await http.get(Uri.parse("https://rickandmortyapi.com/api/character"));
    if (res.statusCode == 200) {
      final decodedRes = jsonDecode(res.body);
      final data = decodedRes["results"];
      for (var item in data) {
        print(item["name"]);
      }
    }
  } catch (e) {
    print("error caught: $e");
  }
}
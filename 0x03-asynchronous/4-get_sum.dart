import "4-util.dart";
import "dart:convert";


Future<double> calculateTotal() async {
  try {
    String res = await fetchUserData();
    var decodedUser = jsonDecode(res);
    String userID = decodedUser["id"];

    String resOrders = await fetchUserOrders(userID);
    List userOrders = jsonDecode(resOrders);

    double totalPrice = 0.0;

    for (var order in userOrders) {
      String product = order.toString();
      String resPrice = await fetchProductPrice(product);
      double productPrice = double.tryParse(resPrice) ?? 0.0;
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
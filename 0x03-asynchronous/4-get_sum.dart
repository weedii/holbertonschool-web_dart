import "4-util.dart":
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String res = await fetchUserData();
    var decodedUser = jsonDecode(res);
    String userID = decodedUser["id"];

    String resOrders = await fetchUserOrders(userID);
    List userOrders = jsonDecode(resOrders);

    double totalPrice = 0.0;

    for (var product in userOrders) {
      String resPrice = await fetchProductPrice(product);
      double productPrice = jsonDecode(resPrice);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
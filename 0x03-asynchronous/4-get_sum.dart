import "4-util.dart":
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String res = await fetchUserData();
    var decodedUser = json.decode(res);
    String userID = decodedUser["id"];

    String resOrders = await fetchUserOrders(userID);
    List userOrders = json.decode(resOrders);

    double totalPrice = 0;

    for (var product in userOrders) {
      String resPrice = await fetchProductPrice(product);
      double productPrice = json.decode(resPrice);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (err) {
    return -1;
  }
}
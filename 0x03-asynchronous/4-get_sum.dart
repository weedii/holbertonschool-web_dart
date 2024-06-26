import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final decodedUserData = jsonDecode(userData);
    final userId = decodedUserData['id'];

    final userOrdersData = await fetchUserOrders(userId);
    final userOrders = jsonDecode(userOrdersData);

    double totalPrice = 0;
    for (var order in userOrders) {
      final productPriceData = await fetchProductPrice(order);
      final productPrice = jsonDecode(productPriceData);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
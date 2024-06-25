List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((item) {
    double res = (item * 9 / 5) + 32;
    return double.parse(res.toStringAsFixed(2));
  }).toList();
}

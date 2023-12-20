import 'package:intl/intl.dart';

class PriceUtils {
  static String convertPriceToBR(double price) {
    return NumberFormat.currency(
      locale: 'pt_BR', symbol: ''
    ).format(price);
  }
}
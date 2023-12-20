import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_in_cart.freezed.dart';

@freezed
class ItemInCart with _$ItemInCart {
  const factory ItemInCart({
    required String idItem,
    required String urlPathCoffee,
    required String titleCoffee,
    required String quantityMl,
    required int quantityCoffee,
    required double priceCoffee,
  }) = _ItemInCart;
}

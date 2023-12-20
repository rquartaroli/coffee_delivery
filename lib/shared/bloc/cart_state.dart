part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  factory CartState.initial() = _CartStateInitial;
  factory CartState.data({
    required List<ItemInCart> itemsCart,
    required double amountTotal,
  }) = _CartStateData;
}
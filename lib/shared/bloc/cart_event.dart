part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.findItems() = _CartEventFindItems;
  const factory CartEvent.addItems(ItemInCart item) = _CartEventAddItems;
  const factory CartEvent.updateIncrementItem(String idItem) = _CartEventUpdateIncrementItem;
  const factory CartEvent.updateDecrementItem(String idItem) = _CartEventUpdateDecrementItem;
  const factory CartEvent.removeItems(String idItem) = _CartEventRemoveItems;
  const factory CartEvent.finishOrder() = _CartEventFinishOrder;
}
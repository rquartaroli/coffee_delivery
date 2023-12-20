import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee_delivery/shared/model/item_in_cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.dart';
part 'cart_event.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState>{
  CartBloc() : super(CartState.initial()) {
    on<_CartEventFindItems>(_findItems);
    on<_CartEventAddItems>(_addItems);
    on<_CartEventUpdateIncrementItem>(_updateIncrementItem);
    on<_CartEventUpdateDecrementItem>(_updateDecrementItem);
    on<_CartEventRemoveItems>(_removeItems);
    on<_CartEventFinishOrder>(_finishOrder);
  }

  FutureOr<void> _findItems(
    _CartEventFindItems event,
    Emitter<CartState> emit,
  ) async {
    List<ItemInCart> itemsInCart= state.maybeWhen(
      data: (items,_) => items,
      orElse: () => const <ItemInCart>[],
    );

    emit(CartState.data(itemsCart: itemsInCart, amountTotal: 0.00));
  }

  FutureOr<void> _addItems(
    _CartEventAddItems event,
    Emitter<CartState> emit,
  ) async {
    List<ItemInCart> items = state.maybeWhen(
      data: (items, _) => items,
      orElse: () => const <ItemInCart>[],
    );
    double amountPrice = 0.00;

    List<ItemInCart> newItems = [...items];
    newItems.add(event.item);

    for(int i = 0; i < newItems.length; i++) {
      amountPrice += (newItems[i].priceCoffee * newItems[i].quantityCoffee);
    }

    emit(CartState.data(itemsCart: newItems, amountTotal: amountPrice));
  }

  FutureOr<void> _updateIncrementItem(
    _CartEventUpdateIncrementItem event,
    Emitter<CartState> emit,
  ) async {
    List<ItemInCart> items = state.maybeWhen(
      data: (items, _) => items,
      orElse: () => const <ItemInCart>[],
    );
    double amountPrice = 0.00;

    final newItems = [...items];

    ItemInCart itemForUpdate = newItems.firstWhere((element) => element.idItem == event.idItem);
    int indexItemForUpdate = newItems.indexWhere((element) => element.idItem == event.idItem);

    final itemAdd = itemForUpdate.copyWith(
      quantityCoffee: itemForUpdate.quantityCoffee + 1,
    );

    newItems[indexItemForUpdate] = itemAdd;

    for(int i = 0; i < newItems.length; i++) {
      amountPrice += (newItems[i].priceCoffee * newItems[i].quantityCoffee);
    }

    emit(CartState.data(itemsCart: newItems, amountTotal: amountPrice));
  }

  FutureOr<void> _updateDecrementItem(
    _CartEventUpdateDecrementItem event,
    Emitter<CartState> emit,
  ) async {
    List<ItemInCart> items = state.maybeWhen(
      data: (items, _) => items,
      orElse: () => const <ItemInCart>[],
    );
    double amountPrice = 0.00;

    final newItems = [...items];

    ItemInCart itemForUpdate = newItems.firstWhere((element) => element.idItem == event.idItem);
    int indexItemForUpdate = newItems.indexWhere((element) => element.idItem == event.idItem);

    final itemAdd = itemForUpdate.copyWith(
      quantityCoffee: itemForUpdate.quantityCoffee > 1 ? itemForUpdate.quantityCoffee - 1 : 1,
    );

    newItems[indexItemForUpdate] = itemAdd;

    for(int i = 0; i < newItems.length; i++) {
      amountPrice += (newItems[i].priceCoffee * newItems[i].quantityCoffee);
    }

    emit(CartState.data(itemsCart: newItems, amountTotal: amountPrice));
  }

  FutureOr<void> _removeItems(
    _CartEventRemoveItems event,
    Emitter<CartState> emit,
  ) async {
    List<ItemInCart> items = state.maybeWhen(
      data: (items,_) => items,
      orElse: () => const <ItemInCart>[],
    );
    double amountPrice = 0.00;

    final newItems = [...items];

    newItems.retainWhere((element) => element.idItem != event.idItem);

    for(int i = 0; i < newItems.length; i++) {
      amountPrice += (newItems[i].priceCoffee * newItems[i].quantityCoffee);
    }

    emit(CartState.data(itemsCart: newItems, amountTotal: amountPrice));
  }

  FutureOr<void> _finishOrder(
    _CartEventFinishOrder event,
    Emitter<CartState> emit,
  ) async {
    emit(CartState.data(itemsCart: [], amountTotal: 0.00));
  }
}
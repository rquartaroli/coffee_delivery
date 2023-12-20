// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ItemInCart> itemsCart, double amountTotal)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ItemInCart> itemsCart, double amountTotal)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ItemInCart> itemsCart, double amountTotal)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStateInitial value)? initial,
    TResult? Function(_CartStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartStateInitialImplCopyWith<$Res> {
  factory _$$CartStateInitialImplCopyWith(_$CartStateInitialImpl value,
          $Res Function(_$CartStateInitialImpl) then) =
      __$$CartStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateInitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateInitialImpl>
    implements _$$CartStateInitialImplCopyWith<$Res> {
  __$$CartStateInitialImplCopyWithImpl(_$CartStateInitialImpl _value,
      $Res Function(_$CartStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateInitialImpl implements _CartStateInitial {
  _$CartStateInitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ItemInCart> itemsCart, double amountTotal)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ItemInCart> itemsCart, double amountTotal)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ItemInCart> itemsCart, double amountTotal)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStateInitial value)? initial,
    TResult? Function(_CartStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartStateInitial implements CartState {
  factory _CartStateInitial() = _$CartStateInitialImpl;
}

/// @nodoc
abstract class _$$CartStateDataImplCopyWith<$Res> {
  factory _$$CartStateDataImplCopyWith(
          _$CartStateDataImpl value, $Res Function(_$CartStateDataImpl) then) =
      __$$CartStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItemInCart> itemsCart, double amountTotal});
}

/// @nodoc
class __$$CartStateDataImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateDataImpl>
    implements _$$CartStateDataImplCopyWith<$Res> {
  __$$CartStateDataImplCopyWithImpl(
      _$CartStateDataImpl _value, $Res Function(_$CartStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsCart = null,
    Object? amountTotal = null,
  }) {
    return _then(_$CartStateDataImpl(
      itemsCart: null == itemsCart
          ? _value._itemsCart
          : itemsCart // ignore: cast_nullable_to_non_nullable
              as List<ItemInCart>,
      amountTotal: null == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CartStateDataImpl implements _CartStateData {
  _$CartStateDataImpl(
      {required final List<ItemInCart> itemsCart, required this.amountTotal})
      : _itemsCart = itemsCart;

  final List<ItemInCart> _itemsCart;
  @override
  List<ItemInCart> get itemsCart {
    if (_itemsCart is EqualUnmodifiableListView) return _itemsCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemsCart);
  }

  @override
  final double amountTotal;

  @override
  String toString() {
    return 'CartState.data(itemsCart: $itemsCart, amountTotal: $amountTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._itemsCart, _itemsCart) &&
            (identical(other.amountTotal, amountTotal) ||
                other.amountTotal == amountTotal));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_itemsCart), amountTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateDataImplCopyWith<_$CartStateDataImpl> get copyWith =>
      __$$CartStateDataImplCopyWithImpl<_$CartStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ItemInCart> itemsCart, double amountTotal)
        data,
  }) {
    return data(itemsCart, amountTotal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ItemInCart> itemsCart, double amountTotal)? data,
  }) {
    return data?.call(itemsCart, amountTotal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ItemInCart> itemsCart, double amountTotal)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(itemsCart, amountTotal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStateInitial value)? initial,
    TResult? Function(_CartStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CartStateData implements CartState {
  factory _CartStateData(
      {required final List<ItemInCart> itemsCart,
      required final double amountTotal}) = _$CartStateDataImpl;

  List<ItemInCart> get itemsCart;
  double get amountTotal;
  @JsonKey(ignore: true)
  _$$CartStateDataImplCopyWith<_$CartStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartEventFindItemsImplCopyWith<$Res> {
  factory _$$CartEventFindItemsImplCopyWith(_$CartEventFindItemsImpl value,
          $Res Function(_$CartEventFindItemsImpl) then) =
      __$$CartEventFindItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEventFindItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventFindItemsImpl>
    implements _$$CartEventFindItemsImplCopyWith<$Res> {
  __$$CartEventFindItemsImplCopyWithImpl(_$CartEventFindItemsImpl _value,
      $Res Function(_$CartEventFindItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartEventFindItemsImpl implements _CartEventFindItems {
  const _$CartEventFindItemsImpl();

  @override
  String toString() {
    return 'CartEvent.findItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEventFindItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return findItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return findItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (findItems != null) {
      return findItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return findItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return findItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (findItems != null) {
      return findItems(this);
    }
    return orElse();
  }
}

abstract class _CartEventFindItems implements CartEvent {
  const factory _CartEventFindItems() = _$CartEventFindItemsImpl;
}

/// @nodoc
abstract class _$$CartEventAddItemsImplCopyWith<$Res> {
  factory _$$CartEventAddItemsImplCopyWith(_$CartEventAddItemsImpl value,
          $Res Function(_$CartEventAddItemsImpl) then) =
      __$$CartEventAddItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemInCart item});

  $ItemInCartCopyWith<$Res> get item;
}

/// @nodoc
class __$$CartEventAddItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventAddItemsImpl>
    implements _$$CartEventAddItemsImplCopyWith<$Res> {
  __$$CartEventAddItemsImplCopyWithImpl(_$CartEventAddItemsImpl _value,
      $Res Function(_$CartEventAddItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CartEventAddItemsImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInCart,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemInCartCopyWith<$Res> get item {
    return $ItemInCartCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CartEventAddItemsImpl implements _CartEventAddItems {
  const _$CartEventAddItemsImpl(this.item);

  @override
  final ItemInCart item;

  @override
  String toString() {
    return 'CartEvent.addItems(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventAddItemsImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventAddItemsImplCopyWith<_$CartEventAddItemsImpl> get copyWith =>
      __$$CartEventAddItemsImplCopyWithImpl<_$CartEventAddItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return addItems(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return addItems?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return addItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class _CartEventAddItems implements CartEvent {
  const factory _CartEventAddItems(final ItemInCart item) =
      _$CartEventAddItemsImpl;

  ItemInCart get item;
  @JsonKey(ignore: true)
  _$$CartEventAddItemsImplCopyWith<_$CartEventAddItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventUpdateIncrementItemImplCopyWith<$Res> {
  factory _$$CartEventUpdateIncrementItemImplCopyWith(
          _$CartEventUpdateIncrementItemImpl value,
          $Res Function(_$CartEventUpdateIncrementItemImpl) then) =
      __$$CartEventUpdateIncrementItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idItem});
}

/// @nodoc
class __$$CartEventUpdateIncrementItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventUpdateIncrementItemImpl>
    implements _$$CartEventUpdateIncrementItemImplCopyWith<$Res> {
  __$$CartEventUpdateIncrementItemImplCopyWithImpl(
      _$CartEventUpdateIncrementItemImpl _value,
      $Res Function(_$CartEventUpdateIncrementItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idItem = null,
  }) {
    return _then(_$CartEventUpdateIncrementItemImpl(
      null == idItem
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartEventUpdateIncrementItemImpl
    implements _CartEventUpdateIncrementItem {
  const _$CartEventUpdateIncrementItemImpl(this.idItem);

  @override
  final String idItem;

  @override
  String toString() {
    return 'CartEvent.updateIncrementItem(idItem: $idItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventUpdateIncrementItemImpl &&
            (identical(other.idItem, idItem) || other.idItem == idItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventUpdateIncrementItemImplCopyWith<
          _$CartEventUpdateIncrementItemImpl>
      get copyWith => __$$CartEventUpdateIncrementItemImplCopyWithImpl<
          _$CartEventUpdateIncrementItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return updateIncrementItem(idItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return updateIncrementItem?.call(idItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (updateIncrementItem != null) {
      return updateIncrementItem(idItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return updateIncrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return updateIncrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (updateIncrementItem != null) {
      return updateIncrementItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventUpdateIncrementItem implements CartEvent {
  const factory _CartEventUpdateIncrementItem(final String idItem) =
      _$CartEventUpdateIncrementItemImpl;

  String get idItem;
  @JsonKey(ignore: true)
  _$$CartEventUpdateIncrementItemImplCopyWith<
          _$CartEventUpdateIncrementItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventUpdateDecrementItemImplCopyWith<$Res> {
  factory _$$CartEventUpdateDecrementItemImplCopyWith(
          _$CartEventUpdateDecrementItemImpl value,
          $Res Function(_$CartEventUpdateDecrementItemImpl) then) =
      __$$CartEventUpdateDecrementItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idItem});
}

/// @nodoc
class __$$CartEventUpdateDecrementItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventUpdateDecrementItemImpl>
    implements _$$CartEventUpdateDecrementItemImplCopyWith<$Res> {
  __$$CartEventUpdateDecrementItemImplCopyWithImpl(
      _$CartEventUpdateDecrementItemImpl _value,
      $Res Function(_$CartEventUpdateDecrementItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idItem = null,
  }) {
    return _then(_$CartEventUpdateDecrementItemImpl(
      null == idItem
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartEventUpdateDecrementItemImpl
    implements _CartEventUpdateDecrementItem {
  const _$CartEventUpdateDecrementItemImpl(this.idItem);

  @override
  final String idItem;

  @override
  String toString() {
    return 'CartEvent.updateDecrementItem(idItem: $idItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventUpdateDecrementItemImpl &&
            (identical(other.idItem, idItem) || other.idItem == idItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventUpdateDecrementItemImplCopyWith<
          _$CartEventUpdateDecrementItemImpl>
      get copyWith => __$$CartEventUpdateDecrementItemImplCopyWithImpl<
          _$CartEventUpdateDecrementItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return updateDecrementItem(idItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return updateDecrementItem?.call(idItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (updateDecrementItem != null) {
      return updateDecrementItem(idItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return updateDecrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return updateDecrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (updateDecrementItem != null) {
      return updateDecrementItem(this);
    }
    return orElse();
  }
}

abstract class _CartEventUpdateDecrementItem implements CartEvent {
  const factory _CartEventUpdateDecrementItem(final String idItem) =
      _$CartEventUpdateDecrementItemImpl;

  String get idItem;
  @JsonKey(ignore: true)
  _$$CartEventUpdateDecrementItemImplCopyWith<
          _$CartEventUpdateDecrementItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventRemoveItemsImplCopyWith<$Res> {
  factory _$$CartEventRemoveItemsImplCopyWith(_$CartEventRemoveItemsImpl value,
          $Res Function(_$CartEventRemoveItemsImpl) then) =
      __$$CartEventRemoveItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idItem});
}

/// @nodoc
class __$$CartEventRemoveItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventRemoveItemsImpl>
    implements _$$CartEventRemoveItemsImplCopyWith<$Res> {
  __$$CartEventRemoveItemsImplCopyWithImpl(_$CartEventRemoveItemsImpl _value,
      $Res Function(_$CartEventRemoveItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idItem = null,
  }) {
    return _then(_$CartEventRemoveItemsImpl(
      null == idItem
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartEventRemoveItemsImpl implements _CartEventRemoveItems {
  const _$CartEventRemoveItemsImpl(this.idItem);

  @override
  final String idItem;

  @override
  String toString() {
    return 'CartEvent.removeItems(idItem: $idItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventRemoveItemsImpl &&
            (identical(other.idItem, idItem) || other.idItem == idItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventRemoveItemsImplCopyWith<_$CartEventRemoveItemsImpl>
      get copyWith =>
          __$$CartEventRemoveItemsImplCopyWithImpl<_$CartEventRemoveItemsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return removeItems(idItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return removeItems?.call(idItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (removeItems != null) {
      return removeItems(idItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return removeItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return removeItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (removeItems != null) {
      return removeItems(this);
    }
    return orElse();
  }
}

abstract class _CartEventRemoveItems implements CartEvent {
  const factory _CartEventRemoveItems(final String idItem) =
      _$CartEventRemoveItemsImpl;

  String get idItem;
  @JsonKey(ignore: true)
  _$$CartEventRemoveItemsImplCopyWith<_$CartEventRemoveItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventFinishOrderImplCopyWith<$Res> {
  factory _$$CartEventFinishOrderImplCopyWith(_$CartEventFinishOrderImpl value,
          $Res Function(_$CartEventFinishOrderImpl) then) =
      __$$CartEventFinishOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEventFinishOrderImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventFinishOrderImpl>
    implements _$$CartEventFinishOrderImplCopyWith<$Res> {
  __$$CartEventFinishOrderImplCopyWithImpl(_$CartEventFinishOrderImpl _value,
      $Res Function(_$CartEventFinishOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartEventFinishOrderImpl implements _CartEventFinishOrder {
  const _$CartEventFinishOrderImpl();

  @override
  String toString() {
    return 'CartEvent.finishOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventFinishOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findItems,
    required TResult Function(ItemInCart item) addItems,
    required TResult Function(String idItem) updateIncrementItem,
    required TResult Function(String idItem) updateDecrementItem,
    required TResult Function(String idItem) removeItems,
    required TResult Function() finishOrder,
  }) {
    return finishOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findItems,
    TResult? Function(ItemInCart item)? addItems,
    TResult? Function(String idItem)? updateIncrementItem,
    TResult? Function(String idItem)? updateDecrementItem,
    TResult? Function(String idItem)? removeItems,
    TResult? Function()? finishOrder,
  }) {
    return finishOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findItems,
    TResult Function(ItemInCart item)? addItems,
    TResult Function(String idItem)? updateIncrementItem,
    TResult Function(String idItem)? updateDecrementItem,
    TResult Function(String idItem)? removeItems,
    TResult Function()? finishOrder,
    required TResult orElse(),
  }) {
    if (finishOrder != null) {
      return finishOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventFindItems value) findItems,
    required TResult Function(_CartEventAddItems value) addItems,
    required TResult Function(_CartEventUpdateIncrementItem value)
        updateIncrementItem,
    required TResult Function(_CartEventUpdateDecrementItem value)
        updateDecrementItem,
    required TResult Function(_CartEventRemoveItems value) removeItems,
    required TResult Function(_CartEventFinishOrder value) finishOrder,
  }) {
    return finishOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventFindItems value)? findItems,
    TResult? Function(_CartEventAddItems value)? addItems,
    TResult? Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult? Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult? Function(_CartEventRemoveItems value)? removeItems,
    TResult? Function(_CartEventFinishOrder value)? finishOrder,
  }) {
    return finishOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventFindItems value)? findItems,
    TResult Function(_CartEventAddItems value)? addItems,
    TResult Function(_CartEventUpdateIncrementItem value)? updateIncrementItem,
    TResult Function(_CartEventUpdateDecrementItem value)? updateDecrementItem,
    TResult Function(_CartEventRemoveItems value)? removeItems,
    TResult Function(_CartEventFinishOrder value)? finishOrder,
    required TResult orElse(),
  }) {
    if (finishOrder != null) {
      return finishOrder(this);
    }
    return orElse();
  }
}

abstract class _CartEventFinishOrder implements CartEvent {
  const factory _CartEventFinishOrder() = _$CartEventFinishOrderImpl;
}

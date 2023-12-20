import 'package:coffee_delivery/modules/home/home_page.dart';
import 'package:coffee_delivery/modules/purchase_completed/purchase_completed_page.dart';
import 'package:coffee_delivery/routes/routes.dart';
import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/bloc/cart_bloc.dart';
import 'package:coffee_delivery/shared/model/item_in_cart.dart';
import 'package:coffee_delivery/shared/utils/price_utils.dart';
import 'package:coffee_delivery/shared/widgets/button/button_widget.dart';
import 'package:coffee_delivery/shared/widgets/item_cart/item_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 76.0,
        backgroundColor: AppColors.gray100,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.gray900,
              ),
            ),
            Text(
              "Carrinho",
              style: AppTypograph.titleSMGray800,
            ),
            const SizedBox(
              width: 48,
              height: 48,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.68,
            decoration: const BoxDecoration(
                color: AppColors.gray100,
                border: Border(
                    top: BorderSide(
                  width: 1,
                  color: AppColors.gray300,
                ))),
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                List<ItemInCart> currentItemInCart = state.maybeWhen(
                  data: (items, _) => items,
                  orElse: () => const <ItemInCart>[],
                );
                return currentItemInCart.isEmpty
                ?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      const SizedBox(height: 56,),
                      const Icon(
                        Icons.shopping_cart,
                        color: AppColors.gray500,
                        size: 28,
                      ),
                      const SizedBox(height: 12,),
                      Text(
                        "Seu carrinho está vazio",
                        style: AppTypograph.textXS,
                      ),
                      const SizedBox(height: 32,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: ButtonWidget(
                          titleButton: "VER CATÁLOGO", 
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              settings: const RouteSettings(name: homeRoute),
                              builder: (context) => const Home()),
                              (route) => false,
                            );
                          }
                        ),
                      )
                    ],
                  ),
                )
                :
                ListView.builder(
                  itemCount: currentItemInCart.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: Key(currentItemInCart[index].toString()),
                      onDismissed: (direction) {
                        context.read<CartBloc>().add(CartEvent.removeItems(
                          currentItemInCart[index].idItem
                        ));
                      },
                      background: Container(
                        color: AppColors.redLight,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 32),
                              child: Icon(
                                Icons.delete_outline,
                                color: AppColors.redDark,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      secondaryBackground: Container(
                        color: AppColors.redLight,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 32),
                              child: Icon(
                                Icons.delete_outline,
                                color: AppColors.redDark,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: ItemCartWidget(
                        assetImagePath: currentItemInCart[index].urlPathCoffee,
                        titleItem: currentItemInCart[index].titleCoffee,
                        sizeItem: currentItemInCart[index].quantityMl,
                        priceItem: (currentItemInCart[index].priceCoffee *
                            currentItemInCart[index].quantityCoffee),
                        addAction: () {
                          context.read<CartBloc>().add(
                              CartEvent.updateIncrementItem(
                                  currentItemInCart[index].idItem));
                        },
                        quantityItem: currentItemInCart[index].quantityCoffee,
                        subtractAction: () {
                          context.read<CartBloc>().add(
                              CartEvent.updateDecrementItem(
                                  currentItemInCart[index].idItem));
                        },
                        deleteAction: () {
                          showDialog(
                            context: context, 
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Remover café da lista'),
                                content: const SingleChildScrollView(
                                  child: ListBody(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text('Tem certeza que deseja remover esse café da lista ?'),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.of(context).pop(), 
                                    child: const Text('Cancelar'),
                                  ),
                                  TextButton(
                                    onPressed: () => {
                                      context.read<CartBloc>().add(CartEvent.removeItems(
                                        currentItemInCart[index].idItem
                                      )),
                                      Navigator.of(context).pop(),
                                    }, 
                                    child: const Text('Remover'),
                                  ),
                                ],
                              );
                            }
                          );
                          
                        },
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: size.width,
        height: 160,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 16,
            offset: const Offset(0, -2),
          )
        ]),
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Valor Total",
                  style: AppTypograph.textMDGray800,
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    double amountTotal = state.maybeWhen(
                      data: (_, amount) => amount,
                      orElse: () => 0.00,
                    );

                    return Text(
                      "R\$ ${PriceUtils.convertPriceToBR(amountTotal)}",
                      style: AppTypograph.titleMD,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                List<ItemInCart> currentItemInCart = state.maybeWhen(
                  data: (items, _) => items,
                  orElse: () => const <ItemInCart>[],
                );
                return ButtonWidget(
                    titleButton: "CONFIRMAR PEDIDO",
                    isYellowDark: true,
                    onPressed: currentItemInCart.isEmpty 
                    ? null
                    : () {
                      context.read<CartBloc>().add(const CartEvent.finishOrder());
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            settings: const RouteSettings(
                                name: purchaseCompletedRoute),
                            builder: (context) => const PurchaseCompleted()),
                        (route) => route.isFirst);
                    }
                  );
              },
            )
          ],
        ),
      ),
    );
  }
}

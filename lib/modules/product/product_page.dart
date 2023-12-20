import 'package:coffee_delivery/modules/product/product_controller.dart';
import 'package:coffee_delivery/routes/routes.dart';
import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_images.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/bloc/cart_bloc.dart';
import 'package:coffee_delivery/shared/model/coffee.dart';
import 'package:coffee_delivery/shared/model/item_in_cart.dart';
import 'package:coffee_delivery/shared/utils/generate_id.dart';
import 'package:coffee_delivery/shared/utils/price_utils.dart';
import 'package:coffee_delivery/shared/widgets/add_or_subtract_item/add_or_subtract_item_widget.dart';
import 'package:coffee_delivery/shared/widgets/button/button_widget.dart';
import 'package:coffee_delivery/shared/widgets/tag_info_categories/tag_info_categories_widget.dart';
import 'package:coffee_delivery/shared/widgets/tag_select_size/tag_select_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatefulWidget {
  final VoidCallback onSnackBarPressed;
  const ProductPage({super.key, required this.onSnackBarPressed});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final controller = ProductControllet();
  Coffee paramCoffee = Coffee(
      urlPathCoffee: '',
      categoryCoffee: '',
      titleCoffee: '',
      descriptionCoffee: '',
      priceCoffee: 0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

      setState(() {
        if (param?['coffeeData'].titleCoffee != '') {
          paramCoffee = param?['coffeeData'];
          controller.priceCoffee = param?['coffeeData'].priceCoffee;
          controller.priceCoffeeToDisplay = param?['coffeeData'].priceCoffee;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 76.0,
        backgroundColor: AppColors.gray900,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            )
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 17),
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                var currentState = state.maybeWhen(
                  data: (items,_) => items,
                  orElse: () => const <String>[],
                );
                return Stack(clipBehavior: Clip.none, children: [
                  currentState.isEmpty 
                  ?
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(cartRoute);
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: AppColors.yellowDark,
                      size: 20,
                    )
                  )
                  :
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(cartRoute);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: AppColors.purple,
                        size: 20,
                      )),
                  if(currentState.isNotEmpty)
                  Positioned(
                    top: -3,
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.purple,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        currentState.length.toString(),
                        style: AppTypograph.textXSWhite,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ]);
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height * 0.85,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.60,
                color: AppColors.gray900,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TagInfoCategoriesWidget(
                      infoCategory: paramCoffee.categoryCoffee,
                      isCoffeeVariant: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          paramCoffee.titleCoffee,
                          style: paramCoffee.titleCoffee.length >= 18
                              ? AppTypograph.titleMDWhite
                              : AppTypograph.titleLGWhite,
                        ),
                        Text.rich(TextSpan(
                            text: "R\$",
                            style: AppTypograph.textSMYellow,
                            children: [
                              TextSpan(
                                text: PriceUtils.convertPriceToBR(
                                    controller.priceCoffeeToDisplay),
                                style: AppTypograph.titleXL,
                              )
                            ])),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      paramCoffee.descriptionCoffee,
                      style: AppTypograph.textMDGray500,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              left: 0,
                              bottom: -55,
                              child: Image.asset(
                                AppImages.coffee,
                              )),
                          Align(
                              alignment: Alignment.topCenter,
                              child: SvgPicture.asset(
                                AppImages.smoke,
                                semanticsLabel: "Smoke",
                                height: 137,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 42,
                      ),
                      Text(
                        "Selecione o tamanho:",
                        style: AppTypograph.textSMGray600,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          TagSelectSizeWidget(
                              sizeInfo: "114ml",
                              isActive: controller.tagActive == 1 ? true : false,
                              onTap: () {
                                controller.setActiveTagNumber(1);
                                setState(() {});
                              }),
                          const SizedBox(
                            width: 8,
                          ),
                          TagSelectSizeWidget(
                              sizeInfo: "140ml",
                              isActive: controller.tagActive == 2 ? true : false,
                              onTap: () {
                                controller.setActiveTagNumber(2);
                                setState(() {});
                              }),
                          const SizedBox(
                            width: 8,
                          ),
                          TagSelectSizeWidget(
                              sizeInfo: "227ml",
                              isActive: controller.tagActive == 3 ? true : false,
                              onTap: () {
                                controller.setActiveTagNumber(3);
                                setState(() {});
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            color: AppColors.gray300,
                            borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddOrSubtractItemWidget(
                              addItem: () {
                                controller.incrementQuantityCoffee();
                                setState(() {});
                              },
                              subtractItem: () {
                                controller.decrementQuantityCoffee();
                                setState(() {});
                              },
                              itemQuantity: controller.quantityCoffee,
                            ),
                            SizedBox(
                              width: 179,
                              child: ButtonWidget(
                                titleButton: "ADICIONAR",
                                onPressed: () {
                                  context.read<CartBloc>().add(CartEvent.addItems(
                                    ItemInCart(
                                      idItem: generateId(),
                                      urlPathCoffee: paramCoffee.urlPathCoffee,
                                      titleCoffee: paramCoffee.titleCoffee,
                                      quantityMl: controller.quantityML,
                                      quantityCoffee: controller.quantityCoffee,
                                      priceCoffee: controller.tagActive == 1
                                      ?
                                        controller.priceCoffee
                                      : controller.tagActive == 2
                                      ?
                                        ((controller.priceCoffee * 0.2) + controller.priceCoffee)
                                      :
                                        ((controller.priceCoffee * 0.9) + controller.priceCoffee)
                                    )
                                  ));
                                  final snackbar = SnackBar(
                                    content: Row(
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: const BoxDecoration(
                                                color: AppColors.gray500,
                                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                              ),
                                              child: const Icon(
                                                Icons.shopping_cart,
                                                color: AppColors.white,
                                                size: 18,
                                              ),
                                            ),
                                            Positioned(
                                              top: -8,
                                              right: -8,
                                              child: Container(
                                                width: 18,
                                                height: 18,
                                                decoration: BoxDecoration(
                                                  color: AppColors.purple,
                                                  borderRadius: BorderRadius.circular(100),
                                                ),
                                                child: Text(
                                                  controller.quantityCoffee.toString(),
                                                  style: AppTypograph.textXSWhite,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )
                                          ]
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                text: controller.quantityCoffee > 1
                                                ?
                                                "${controller.quantityCoffee} cafés "
                                                : 
                                                "${controller.quantityCoffee} café "
                                                ,
                                                style: AppTypograph.textSMGray600,
                                                children: [
                                                  TextSpan(
                                                    text: paramCoffee.titleCoffee.length > 8 
                                                    ?
                                                      "${paramCoffee.titleCoffee.substring(0, 8)}..."
                                                    :
                                                      paramCoffee.titleCoffee,
                                                    style: AppTypograph.textSMGray700Bold,
                                                  ),
                                                  TextSpan(
                                                    text: " de ",
                                                    style: AppTypograph.textSMGray600,
                                                  ),
                                                  TextSpan(
                                                    text: controller.quantityML,
                                                    style: AppTypograph.textSMGray700Bold,
                                                  ),
                                                ]
                                              )
                                            ),
                                            controller.quantityCoffee > 1
                                            ?
                                            Text(
                                              'adicionados ao carrinho',
                                              style: AppTypograph.textSMGray600,
                                            )
                                            :
                                            Text(
                                              'adicionado ao carrinho',
                                              style: AppTypograph.textSMGray600,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    backgroundColor: AppColors.white,
                                    action: SnackBarAction(
                                      label: 'VER ->', 
                                      textColor: AppColors.purple,
                                      onPressed: widget.onSnackBarPressed,
                                    )
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

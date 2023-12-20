import 'dart:convert';

import 'package:coffee_delivery/modules/home/home_controller.dart';
import 'package:coffee_delivery/modules/product/product_page.dart';
import 'package:coffee_delivery/routes/routes.dart';
import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_images.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/bloc/cart_bloc.dart';
import 'package:coffee_delivery/shared/model/coffee.dart';
import 'package:coffee_delivery/shared/utils/transform_string.dart';
import 'package:coffee_delivery/shared/widgets/card_horizontal_coffee/card_horizontal_coffee_widget.dart';
import 'package:coffee_delivery/shared/widgets/card_standing_coffee/card_standing_coffee_widget.dart';
import 'package:coffee_delivery/shared/widgets/tag_categories/tag_categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color iconInputColor = AppColors.gray600;
  late FocusNode focusNode;
  var currentCategory = "";
  var showCategory = false;
  final controller = HomeController();
  final TextEditingController _coffeeField = TextEditingController();
  final ScrollController _scrollCoffee = ScrollController();
  bool firstAnimation = false;
  bool secondAnimation = false;
  final durationFirstAnimation = const Duration(milliseconds: 500);
  final durationSecondAnimation = const Duration(milliseconds: 700);

  void navigateToCart() {
    Navigator.of(context).pushNamed(cartRoute);
  }

  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.findItems());
    focusNode = FocusNode();

    focusNode.addListener(() {
      setState(() {
        if (controller.inputCoffee != '' && !focusNode.hasFocus) {
          iconInputColor = AppColors.yellowDark;
        } else if (focusNode.hasFocus) {
          iconInputColor = AppColors.yellow;
        } else if (!focusNode.hasFocus) {
          iconInputColor = AppColors.gray600;
        } else {
          iconInputColor = AppColors.gray600;
        }
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        firstAnimation = !firstAnimation;
      });
      Future.delayed(durationFirstAnimation, () {
        setState(() {
          secondAnimation = !secondAnimation;  
        });
      });

    });

    super.initState();
    _loadCoffees();
  }

  Future<void> _loadCoffees() async {
    final coffeesJson = await rootBundle.loadString('assets/coffees.json');
    setState(() {
      var coffeeList = json.decode(coffeesJson);
      controller.coffees =
          coffeeList.map<Coffee>((coffee) => Coffee.fromMap(coffee)).toList();
      controller.coffeeFiltered =
          coffeeList.map<Coffee>((coffee) => Coffee.fromMap(coffee)).toList();
    });
  }

  @override
  void dispose() {
    _scrollCoffee.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          toolbarHeight: 76.0,
          backgroundColor: AppColors.gray900,
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 17),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  var currentState = state.maybeWhen(
                    data: (items,_) => items,
                    orElse: () => const <String>[],
                  );
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
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
                            ScaffoldMessenger.of(context).removeCurrentSnackBar();
                            Navigator.of(context).pushNamed(cartRoute);
                          },
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: AppColors.purple,
                            size: 20,
                          )
                        ),
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
                    ],
                  );
                },
              ),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.location_on,
                    color: AppColors.purple,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Salto, SP',
                  style: AppTypograph.textSMWhite,
                )
              ],
            ),
          )),
      body: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          controller: _scrollCoffee,
          child: Column(
            children: [
              Container(
                width: size.width,
                color: AppColors.gray100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      duration: durationFirstAnimation,
                      height: firstAnimation ? size.height * 0.54 : 0,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                        Container(
                          height: 280,
                          color: AppColors.gray900,
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: ListView(
                            children: [
                              AnimatedContainer(
                                duration: durationFirstAnimation,
                                margin: firstAnimation ? const EdgeInsets.only(top: 0) : const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Encontre o café perfeito para qualquer hora do dia',
                                      style: AppTypograph.titleMDWhite,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    TextField(
                                      controller: _coffeeField,
                                      onChanged: (String value) {
                                        controller.searchCoffeeForTitle(value);
                                        setState(() {
                                          controller.inputCoffee = value;
                                        });
                                      },
                                      focusNode: focusNode,
                                      style: AppTypograph.textSMInputWhite,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: iconInputColor,
                                          size: 20,
                                        ),
                                        hintText: 'Pesquisar',
                                        hintStyle: AppTypograph.textSMInputHint,
                                        labelStyle: AppTypograph.textSMWhite,
                                        filled: true,
                                        fillColor: AppColors.gray800,
                                        contentPadding: const EdgeInsets.all(0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4),
                                          borderSide: BorderSide.none,
                                        ),
                                        isDense: true,
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(1.22, 0.5),
                                      child: Image.asset(AppImages.grainOfCoffee),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          ),
                        ),
                        AnimatedPositioned(
                          duration: durationSecondAnimation,
                          top: 155,
                          right: 0,
                          left: secondAnimation ? 0 : size.width,
                          bottom: 0,
                          curve: Curves.decelerate,
                          child: ScrollSnapList(
                            itemBuilder: (context, index) {
                              var coffee =
                                  controller.coffeeFiltered[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 32),
                                child: CardStandingCoffeeWidget(
                                  urlPathCoffee: coffee.urlPathCoffee,
                                  categoryCoffee: coffee.categoryCoffee,
                                  titleCoffee: coffee.titleCoffee,
                                  descriptionCoffee:
                                      coffee.descriptionCoffee,
                                  priceCoffee: coffee.priceCoffee,
                                  onTap: () {
                                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        settings: RouteSettings(arguments: {'coffeeData': coffee}),
                                        builder: (context) => ProductPage(onSnackBarPressed: navigateToCart)
                                      )
                                    );
                                    _coffeeField.clear();
                                    setState(() {
                                      iconInputColor = AppColors.gray600;
                                    });
                                    controller.searchCoffeeForTitle('');
                                    focusNode.unfocus();
                                  },
                                ),
                              );
                            },
                            itemCount: controller.coffeeFiltered.length, 
                            itemSize: 166.4,
                            dynamicItemSize: true,
                            onItemFocus: (index) {}
                          )
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
              StickyHeader(
                header: AnimatedContainer(
                      duration: durationSecondAnimation,
                      margin: secondAnimation ? const EdgeInsets.only(top: 0) : EdgeInsets.only(top: size.height * 0.5),
                      curve: Curves.decelerate,
                      color: AppColors.gray100,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nossos Cafés',
                                  style: AppTypograph.titleSM,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                              children: [
                                TagCategoriesWidget(
                                  category: "TRADICIONAIS",
                                  onTap: () {
                                    controller.setActiveTagCategory("TRADICIONAL");
                                    setState(() {
                                      currentCategory = "";
                                    });
                                    _scrollCoffee.animateTo(
                                      size.height*0.6,
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  isActive:
                                      controller.tagCategoryActive == "TRADICIONAL"
                                          ? true
                                          : false,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                TagCategoriesWidget(
                                  category: "DOCES",
                                  onTap: () {
                                    controller.setActiveTagCategory("DOCE");
                                    setState(() {
                                      currentCategory = "";
                                    });
                                    _scrollCoffee.animateTo(
                                      size.height*0.6,
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  isActive: controller.tagCategoryActive == "DOCE"
                                      ? true
                                      : false,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                TagCategoriesWidget(
                                  category: "ESPECIAIS",
                                  onTap: () {
                                    controller.setActiveTagCategory("ESPECIAL");
                                    setState(() {
                                      currentCategory = "";
                                    });
                                    _scrollCoffee.animateTo(
                                      size.height*0.6,
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  isActive: controller.tagCategoryActive == "ESPECIAL"
                                      ? true
                                      : false,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                content: Container(
                  color: AppColors.gray100,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ListView.builder(
                    itemCount: controller.coffeeFiltered.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var coffee = controller.coffeeFiltered[index];
                      if (currentCategory == '') {
                        currentCategory =
                            controller.coffeeFiltered[index].categoryCoffee;
                        showCategory = true;
                      } else if (currentCategory !=
                          controller.coffeeFiltered[index].categoryCoffee) {
                        currentCategory =
                            controller.coffeeFiltered[index].categoryCoffee;
                        showCategory = true;
                      } else {
                        showCategory = false;
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          currentCategory != '' && showCategory
                              ? const SizedBox(
                                  height: 32,
                                )
                              : const SizedBox(
                                  height: 0,
                                ),
                          currentCategory != '' && showCategory
                              ? Text(
                                  TransformString.convertStringToPlural(
                                      currentCategory),
                                  style: AppTypograph.titleXSGray600,
                                )
                              : const Text(''),
                          currentCategory != '' && showCategory
                              ? const SizedBox(
                                  height: 32,
                                )
                              : const SizedBox(
                                  height: 0,
                                ),
                          CardHorizontalCoffeeWidget(
                            urlPathCoffee: coffee.urlPathCoffee,
                            titleCoffee: coffee.titleCoffee,
                            descriptionCoffee: coffee.descriptionCoffee,
                            priceCoffee: coffee.priceCoffee,
                            onTap: () {
                              ScaffoldMessenger.of(context).removeCurrentSnackBar();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(arguments: {'coffeeData': coffee}),
                                  builder: (context) => ProductPage(onSnackBarPressed: navigateToCart)
                                )
                              );
                            },
                          ),
                          const SizedBox(height: 32,),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:coffee_delivery/modules/cart/cart_page.dart';
import 'package:coffee_delivery/modules/home/home_page.dart';
import 'package:coffee_delivery/modules/product/product_page.dart';
import 'package:coffee_delivery/modules/purchase_completed/purchase_completed_page.dart';
import 'package:coffee_delivery/modules/splash/splash_page.dart';
import 'package:coffee_delivery/routes/routes.dart';
import 'package:coffee_delivery/shared/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Coffee Delivery',
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: splashRoute,
        routes: {
          splashRoute: (context) => const SplashPage(),
          homeRoute: (context) => const Home(),
          productRoute: (context) => ProductPage(onSnackBarPressed: (){}),
          cartRoute: (context) => const CartPage(),
          purchaseCompletedRoute: (context) => const PurchaseCompleted(),
        },
      ),
    );
  }
}

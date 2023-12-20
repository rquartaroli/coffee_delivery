import 'package:coffee_delivery/modules/home/home_page.dart';
import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool firstAnimation = false;
  final durationFirstAnimation = const Duration(milliseconds: 800);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          firstAnimation = true;
        });
      });
    });

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => const Home())
      );
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: AppColors.purple,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width,
                height: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedPositioned(
                      duration: durationFirstAnimation,
                      top: 0,
                      right: firstAnimation ? 120 : 0,
                      left: 0,
                      bottom: 0,
                      child: Image.asset(AppImages.logoCoffee),
                    ),
                    AnimatedPositioned(
                      duration: durationFirstAnimation,
                      top: 0,
                      right: 0,
                      left: firstAnimation ? 50 : 170,
                      bottom: 0,
                      child: AnimatedOpacity(
                        duration: durationFirstAnimation,
                        opacity: firstAnimation ? 1 : 0,
                        child: Image.asset(AppImages.logoTypograph)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
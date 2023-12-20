import 'package:coffee_delivery/shared/app_colors.dart';
import 'package:coffee_delivery/shared/app_images.dart';
import 'package:coffee_delivery/shared/app_typograph.dart';
import 'package:coffee_delivery/shared/widgets/button/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PurchaseCompleted extends StatefulWidget {
  const PurchaseCompleted({super.key});

  @override
  State<PurchaseCompleted> createState() => _PurchaseCompletedState();
}

class _PurchaseCompletedState extends State<PurchaseCompleted> {
  bool firstAnimation = false;
  bool secondAnimation = false;
  final durationFirstAnimation = const Duration(milliseconds: 1500);
  final durationSecondAnimation = const Duration(milliseconds: 200);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        firstAnimation = true;
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
        setState(() {
          secondAnimation = true;  
        });
      });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      body: Container(
        color: AppColors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: sizeScreen.width,
                height: 161,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: durationFirstAnimation,
                      top: 0,
                      left: firstAnimation ? 50 : -sizeScreen.width,
                      curve: Curves.easeOutBack,
                      child: SizedBox(
                        width: 270,
                        height: 161,
                        child: Image.asset(AppImages.deliveryman))
                    )
                  ]
                )
              ),
              const SizedBox(height: 44,),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 800),
                opacity: firstAnimation ? 1 : 0,
                child: SizedBox(
                  width: sizeScreen.width,
                  height: 80,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: durationFirstAnimation,
                        top: firstAnimation ? 0 : 75,
                        left: 50,
                        curve: Curves.easeOutBack,
                        child: Column(
                          children: [
                            Text('Uhu! Pedido confirmado', style: AppTypograph.titleLG,),
                            const SizedBox(height: 8,),
                            Text(
                              'Agora é só aguardar que logo o café\n chegará até você!', 
                              style: AppTypograph.textSM,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 64,),
              AnimatedOpacity(
                duration: durationSecondAnimation,
                opacity: secondAnimation ? 1 : 0,
                child: SizedBox(
                  width: 248,
                  child: ButtonWidget(
                    titleButton: "IR PARA A HOME",
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
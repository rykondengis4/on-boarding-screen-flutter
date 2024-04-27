import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final GlobalKey<ScaffoldMessengerState> _globalKey = new GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: Colors.redAccent,
        pages: pages,
        skipClicked: (value){
          _globalKey.currentState.showSnackBar(SnackBar(
              content: Text('tombol skip di klik'),
          ));
        },
        getStartedClicked: (value){
          _globalKey.currentState.showSnackBar(SnackBar(
              content: Text('tombol get started di klik'),
          ));
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Pilih Menu Makanan',
        description: 'Dengan mudah, anda bisa mencari menu makanan favorit anda',
        imagePath: 'assets/images/onboarding1.png',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey
    ),
    SkOnboardingModel(
        title: 'Ambil atau antar',
        description: 'Kami menyediakan pesanan cepat, sederhana, dan bebas ongkir',
        imagePath: 'assets/images/onboarding2.png',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey
    ),
    SkOnboardingModel(
        title: 'Bayar cepat dan mudah',
        description: 'Bayar menggunakan kartu kredit atau debit',
        imagePath: 'assets/images/onboarding3.png',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey
    ),
  ];

}

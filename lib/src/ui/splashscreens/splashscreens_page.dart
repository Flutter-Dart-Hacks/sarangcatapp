import 'package:flutter/material.dart';
import 'package:sarangcatapp/src/shareds/themes.dart';
import 'package:sarangcatapp/src/theme_manager/assets_image_icon_manager.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  static const String routeName = '/splash_page';

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.only(
                  bottom: 50,
                  right: 4,
                  top: 20,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        '${AssetsImageIconManager.assetImagePath}/img_hobby1.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Image.asset(
                '${AssetsImageIconManager.assetImagePath}/img_hobby1.png',
                fit: BoxFit.contain,
                width: 200,
                height: 100,
              ),
              // Menghitung letter spacing 32 * 31.5 / 100
              Text(
                'SarangCat',
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: medium,
                  letterSpacing: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

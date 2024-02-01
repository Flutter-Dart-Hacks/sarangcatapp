import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sarangcatapp/src/shareds/strings.dart';
import 'package:sarangcatapp/src/shareds/themes.dart';
import 'package:sarangcatapp/src/theme_manager/assets_image_icon_manager.dart';
import 'package:sarangcatapp/src/theme_manager/fonts_managers.dart';
import 'package:sarangcatapp/src/theme_manager/styles_manager.dart';
import 'package:sarangcatapp/src/theme_manager/values_manager.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  static const String routeName = '/splash_page';

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  String strTanggalDibuat = '';

  Timer? _timerDataLogin;
  Timer? _timerDataLoginPengguna;
  Timer? _timerDataLoginCheck;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void navigasiHalamanLogin() {}

  void navigasiHalamanUtama() {}

  void getTanggalPembuatan() {}

  void getDataLoginPengguna() {}

  void cancelTimer() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 180,
                width: 180,
                margin: const EdgeInsets.only(
                  bottom: 15,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        '${AssetsImageIconManager.assetIconPath}/sarangcat_logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: AppMargin.m16,
                  right: AppMargin.m16,
                ),
                child: Text(
                  appName,
                  style: getWhiteTextStyle(
                    fontsize: FontSizeManager.fontSize20,
                    fontweight: FontWeight.bold,
                  ).copyWith(letterSpacing: 0),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: AppMargin.m16,
                  right: AppMargin.m16,
                ),
                child: Text(
                  appNameLong,
                  style: getWhiteTextStyle(
                    fontweight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: AppMargin.m16,
                  right: AppMargin.m16,
                ),
                child: Text(
                  versiAplikasi,
                  style: getWhiteTextStyle(
                    fontweight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: AppMargin.m16,
                  right: AppMargin.m16,
                ),
                child: Text(
                  strTanggalDibuat,
                  style: getWhiteTextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

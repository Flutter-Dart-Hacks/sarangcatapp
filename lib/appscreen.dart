import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sarangcatapp/src/cubits/auth_login_cubit.dart';
import 'package:sarangcatapp/src/cubits/date_appdibuat_splash_cubit.dart';
import 'package:sarangcatapp/src/theme_manager/themes_data_manager.dart';
import 'package:sarangcatapp/src/features/splashloading/splashscreens_page.dart';

class SarangCatApp extends StatefulWidget {
  const SarangCatApp({super.key});

  @override
  State<SarangCatApp> createState() => _SarangCatAppState();
}

class _SarangCatAppState extends State<SarangCatApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthLoginCubit(),
        ),
        BlocProvider(
          create: (context) => DateAppdibuatSplashCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'SarangCatApp',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: getApplicationThemeData(),
        initialRoute: SplashScreenPage.routeName,
        routes: {
          SplashScreenPage.routeName: (context) {
            return const SplashScreenPage();
          }
        },
      ),
    );
  }
}

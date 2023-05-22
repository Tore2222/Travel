import 'package:app1/representation/screen/slpash_screen.dart';
import 'package:app1/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/constants/color_palatte.dart';
import 'core/helpers/local_storage_helper.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travo App',
      theme: ThemeData(
          primaryColor: ColorPalette.primaryColor,
          scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
          backgroundColor: ColorPalette.backgroundScaffoldColor),
      routes: routes,
      home: const SplashScreen(),
      //debugShowCheckedModeBanner: false,
    );
  }
}

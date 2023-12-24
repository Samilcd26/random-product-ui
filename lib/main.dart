import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rnd_product/ui/root/root.dart';
import 'package:rnd_product/ui/theme/my_app_theme.dart';

void main() => runApp(GetMaterialApp(theme: MyAppTheme(), debugShowCheckedModeBanner: false, home: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootPage();
  }
}

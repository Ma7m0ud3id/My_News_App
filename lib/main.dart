import 'package:flutter/material.dart';
import 'package:my_news/modules/home/Lodin/Screen_login.dart';
import 'package:my_news/modules/home/home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:my_news/shared/styles/my_theme.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:search_page/search_page.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(c)=>HomeScreen(),
        Screenlogin.routName:(v)=>Screenlogin(),
      },
      initialRoute:Screenlogin.routName ,
     theme: MyThemeData.lightTheme,
    );
  }
}


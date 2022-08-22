import 'package:flutter/material.dart';
import 'package:my_news/modules/home/Lodin/Screen_login.dart';
import 'package:my_news/modules/home/home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:my_news/provid/my_provider.dart';
import 'package:my_news/shared/styles/my_theme.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:search_page/search_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp( ChangeNotifierProvider(
      create: (context){

        return MyProviderApp();
      },
      child:MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MyProviderApp provider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((____)=>Sherdeprif() );
  }
  @override
  Widget build(BuildContext context) {
    provider=Provider.of<MyProviderApp>(context);
    //Sherdeprif();
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Arabic, no country code
      ],
      locale: Locale(provider.AppLanguage),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(c)=>HomeScreen(),
        Screenlogin.routName:(v)=>Screenlogin(),
      },
      initialRoute:Screenlogin.routName ,
     theme: MyThemeData.lightTheme,
    );
  }

  void Sherdeprif()async{
    final prefs = await SharedPreferences.getInstance();
    String Language = prefs.getString('Lan')??'en';
    provider.changeLanguage(Language);


  }
}


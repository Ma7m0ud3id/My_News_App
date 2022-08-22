import 'package:flutter/material.dart';
import 'package:my_news/modules/home/Lodin/Screen_login.dart';
import 'package:my_news/modules/home/Settings/Setting.dart';
import 'package:my_news/modules/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../../../provid/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Listapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    return Drawer(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.newsapp,style: Theme.of(context).textTheme.headline1,),
          ),

        ),

        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Navigator.push(//هاااااااااااااااااااااااااااااااااااااااااااااااااااااام
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new Screenlogin(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.list_sharp,size: 40.0,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(AppLocalizations.of(context)!.categories,style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.push(//هاااااااااااااااااااااااااااااااااااااااااااااااااااااام
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new Settings(),
                  ),
                );
                //Navigator.pushNamed(context, Settings.routName);
              },
              child: Row(
                children: [

                  Icon(Icons.settings,size: 40.0,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(AppLocalizations.of(context)!.setting,style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

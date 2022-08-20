import 'package:flutter/material.dart';
import 'package:my_news/modules/home/List_app.dart';
import 'package:my_news/modules/home/tabscontroller.dart';
import 'package:my_news/shared/network/remote/Api_model.dart';
import 'package:my_news/shared/styles/my_theme.dart';

import '../../models/Sourse.dart';


class HomeScreen extends StatelessWidget {

  static const String routeName='home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Listapp(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: MyThemeData.primaryColor,
          centerTitle: true,
          title: Text('News app',style: Theme.of(context).textTheme.headline1),
          // leading: InkWell(child: Icon(Icons.list,size:45.0),onTap: (){
          //
          // }),
          actions: [
          Icon(Icons.search,size: 30.0,)
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),
      body: Container(
        child: FutureBuilder<MainSourse>(
          future: ApiModel.getSources() ,
          builder: (c,snapShot){

            if(snapShot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if(snapShot.hasError){
              return Column(
                children: [
                  Text('Something went wrong'),
                  ElevatedButton(onPressed: (){}, child: Text('Try Again')),
                ],
              );
            }
            if("ok" != snapShot.data?.status){ // error
              return Column(
                children: [
                  Text('Something went wrong'),
                  ElevatedButton(onPressed: (){}, child: Text('Try Again')),
                ],
              );
            }

            // i have data
            var SourcesList=snapShot.data?.sources ??[];
            return TabControllerItem(SourcesList);
          },
        ),
      ),
    );
  }
}

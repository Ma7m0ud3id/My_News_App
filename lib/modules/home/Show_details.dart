

import 'package:flutter/material.dart';

import '../../shared/styles/my_theme.dart';

class Detail extends StatelessWidget {
  static const String routName ='jjlbjbl';
  // var articles ;
  // Detail(this.articles );

  @override
  Widget build(BuildContext context) {
    var dataname= ModalRoute.of(context)?. settings.arguments as dynamic;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: MyThemeData.primaryColor,
          centerTitle: true,
          title: Text('News app',style: Theme.of(context).textTheme.headline1),
          // leading: InkWell(child: Icon(Icons.list,size:45.0),onTap: (){
          //
          // }),

          // actions: [
          //   IconButton(onPressed: (){
          //     showSearch(context: context, delegate: Mysearchdlegate());
          //   }, icon: const Icon(Icons.search,size: 30.0,))
          //
          // ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),

      body:Container(
        width: double.infinity,
        margin:EdgeInsets.fromLTRB(0, 10, 0, 0),
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(dataname.urlToImage??"",
              height: 180,fit: BoxFit.cover,),
            SizedBox(height: 15,),
            Text(dataname.author??"",style: Theme.of(context).textTheme.headline3,),
            SizedBox(height: 5,),
            Text(dataname.title??"",style: Theme.of(context).textTheme.headline2,),
            SizedBox(height: 25,),
            Text(dataname.description??"",textAlign: TextAlign.right,style: Theme.of(context).textTheme.headline2,),
            SizedBox(height: 20),
          ],
        ),
      ) ,
    );


  }
}

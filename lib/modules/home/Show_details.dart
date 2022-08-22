

import 'package:flutter/material.dart';

import '../../shared/styles/my_theme.dart';

class Detail extends StatelessWidget {
  static const String routName ='jjlbjbl';
  // var articles ;
  // Detail(this.articles );

  @override
  Widget build(BuildContext context) {
    var dataname= ModalRoute.of(context)?. settings.arguments as dynamic;
    return
        Container(
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
        );

  }
}

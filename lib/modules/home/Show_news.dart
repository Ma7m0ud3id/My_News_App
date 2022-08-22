import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_news/shared/styles/my_theme.dart';

import 'Show_details.dart';

class ShowNews extends StatelessWidget {
 var articles ;
 ShowNews(this.articles );

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
      Navigator.pushNamed(context,Detail.routName,arguments: articles );

     },
      child: Container(
       clipBehavior: Clip.antiAlias,
       padding: EdgeInsets.symmetric(horizontal: 8),
       decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(12),
       ),

       child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Image.network(articles.urlToImage??"",
          height: 180,fit: BoxFit.cover,),
         SizedBox(height: 10,),
         Text(articles.author??"",style: Theme.of(context).textTheme.headline3,),
         SizedBox(height: 5,),
         Text(articles.title??"",style: Theme.of(context).textTheme.headline2,),
         SizedBox(height: 5,),
         Text(articles.publishedAt??"",textAlign: TextAlign.right,style: Theme.of(context).textTheme.headline3,),
         SizedBox(height: 20),
        ],
       ),
      ),
    );
  }
}

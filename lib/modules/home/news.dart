import 'package:flutter/material.dart';

import '../../models/NewsSourse.dart';
import '../../models/Sourse.dart';
import '../../shared/network/remote/Api_model.dart';

class NewsData extends StatelessWidget {

  Sources newsSource;
  NewsData(this.newsSource);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsSourse>(
        future: ApiModel.getArticles(newsSource),
        builder: (_,snapShot){
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
          
          var newsList=snapShot.data?.articles ?? [];
          return ListView.builder(
              itemCount: newsList.length,
              itemBuilder:(c,index){
                return Text(newsList[index].title ?? "no data",style: TextStyle(color: Colors.black),);
              } ) ;
          
        });
  }
}

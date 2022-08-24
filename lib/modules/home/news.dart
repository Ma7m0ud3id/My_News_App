import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/NewsSourse.dart';
import '../../models/Sourse.dart';
import '../../provid/my_provider.dart';
import '../../shared/network/remote/Api_model.dart';
import 'Search/my_search.dart';
import 'Show_news.dart';

class NewsData extends StatefulWidget {
// String q = ;
  Sources newsSource;
  NewsData(this.newsSource,);

  @override
  State<NewsData> createState() => _NewsDataState();
}

class _NewsDataState extends State<NewsData> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    // print ('value${widget.newsSource.id}');
    // print (pro.Q);
    return  FutureBuilder<NewsSourse>(
        future: ApiModel.getArticles(widget.newsSource,pro.Q),
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
          // print('edit');
          // print(newsList[0]);
          return ListView.builder(
              itemCount: newsList.length,
              itemBuilder:(c,index){
                return ShowNews(newsList[index]);
                  //Text(newsList[index].title ?? "no data",style: TextStyle(color: Colors.black),);
              } ) ;

        });
  }
}

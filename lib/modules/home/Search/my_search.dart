import 'package:flutter/material.dart';

class Mysearchdlegate extends SearchDelegate{
  List<String>resultSearch=[
    'sport',
    'politics',
    'health',
    'environment',
    'bussines',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
    IconButton(onPressed: (){
      if(query.isEmpty){
        close(context, null);
      }
      else query='';

    }, icon: Icon(Icons.clear)),
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: ()=>close(context, null), icon: Icon(Icons.arrow_back));

  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(
      child: Text(
        query,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String>suggest=resultSearch.where((resultSearch) {
      final result=resultSearch.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount:suggest.length ,
        itemBuilder: (context,index)
    {
      final Suggest =suggest[index];
      return ListTile(
        title: Text(Suggest),
        onTap: (){
          query=Suggest;
        },
      );
    }
    );
  }

}
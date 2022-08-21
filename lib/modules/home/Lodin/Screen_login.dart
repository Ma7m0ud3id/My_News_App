import 'package:flutter/material.dart';
import 'package:my_news/modules/home/home_screen.dart';

import '../../../shared/styles/my_theme.dart';
import '../Settings/List_app.dart';


class Screenlogin extends StatelessWidget {
 static const String routName='Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Listapp(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: MyThemeData.primaryColor,
          centerTitle: true,
          title: Text('News app',style: Theme.of(context).textTheme.headline1),
          // leading: InkWell(child: Icon(Icons.list,size:45.0),onTap: (){
          //
          // }),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(child: Text('Pick your category of interest',style: Theme.of(context).textTheme.headline3,)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color(0xFFC91C22),
                    borderRadius: BorderRadius.horizontal(left:Radius.circular(25) )
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/ball.png',height: 120,width: 130),
                      Text('Sport',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(

                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFF003E90),
                    borderRadius: BorderRadius.horizontal(right:Radius.circular(25) )
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/Politics.png',height: 120,width: 130),
                    Text('Politics',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFFED1E79),
                    borderRadius: BorderRadius.horizontal(left:Radius.circular(25) )
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/health.png',height: 120,width: 130),
                    Text('Health',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFFCF7E48),
                    borderRadius: BorderRadius.horizontal(right:Radius.circular(25) )
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/bussines.png',height: 120,width: 130),
                    Text('Bussines',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              SizedBox(
                width: 44,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFF4882CF),
                    borderRadius: BorderRadius.horizontal(left:Radius.circular(25) )
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/environment.png',height: 120,width: 130),
                    Text('Environment',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFFF2D352),
                    borderRadius: BorderRadius.horizontal(right:Radius.circular(25) )
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/science.png',height: 120,width: 130),
                    Text('Science',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
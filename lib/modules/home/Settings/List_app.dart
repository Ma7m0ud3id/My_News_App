import 'package:flutter/material.dart';
import 'package:my_news/modules/home/Settings/Setting.dart';

class Listapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            title: Text('News App!',style: Theme.of(context).textTheme.headline1,),
          ),

        ),

        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(Icons.list_sharp,size: 40.0,),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Categories',style: Theme.of(context).textTheme.headline2,)
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
                  Text('Settings',style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
